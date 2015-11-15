package com.somnus.smart.batch.core.joblaunchdetails;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;
import org.springframework.batch.core.BatchStatus;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.util.Assert;

import com.somnus.smart.batch.core.joblaunchdetails.support.JobLaunchDetailPropertyEditor.JobLaunchDetail;
import com.somnus.smart.batch.core.joblaunchdetails.support.JobLaunchPolicy;

/**
 * @Description: 简易JOB加载器
 * @author Somnus
 * @date 2015年7月30日 下午1:58:28 
 * @version V1.0
 */
public class SimpleJobLaunchDetails implements ApplicationContextAware, InitializingBean {
	
	/**
	 * @Description 执行作业
	 * @param jobParams 作业参数
	 */
	public void executeJobs(Map<String, String> jobParams){
		try{
			StringBuilder traceNoBuilder = new StringBuilder();
			traceNoBuilder.append("TRC-").append(new SimpleDateFormat(PATTERN).format(new Date())).append("-").append(Thread.currentThread().getId());
			log.trace("trace No.: {}", new Object[]{traceNoBuilder.toString()});
			//扩展日志追踪号
			MDC.put(TRACE_NO, traceNoBuilder.toString());
			
			if(jobParams == null){
				jobParams = new HashMap<String, String>();
			}
			jobParams.put("JOB_RUN_DATE", DateTime.now().toString("yyyy-MM-dd"));
			
			log.info(">>>> Starting to execute jobs (count: {})", new Object[]{jobDetails.size()});
			
			JobParameters jobParameters = null;
			JobExecution jobExecution = null;
			
			for(JobLaunchDetail jobDetail : jobDetails){
				jobParams.put("CRITICAL_JOB", String.valueOf(jobDetail.isCritical()));
				
				if(StringUtils.isBlank(jobParams.get("date"))){
					String accDate = null;
					if((accDate = getAccountDate(jobDetail)) != null)jobParams.put("date", accDate);
				}
				
				
				log.info(">>>> Starting to execute job : {} ", new Object[]{jobDetail.getJobName()});
				//获取当前作业
				Job currentJob = fetchJob(jobDetail.getJobName());
				if(currentJob != null){
					JobParametersBuilder jobParametersBuilder = new JobParametersBuilder();
					for(Map.Entry<String, String> jobParam : jobParams.entrySet()){
						jobParametersBuilder.addString(jobParam.getKey(), jobParam.getValue());
					}
					jobParameters = jobParametersBuilder.toJobParameters();
					
					try {
						jobExecution = jobLauncher.run(currentJob, jobParameters);
						if(jobExecution != null && jobExecution.getStatus() != BatchStatus.COMPLETED){
							log.error(">>>> Job [{}] executing failed due to exceptions: {}", new Object[]{jobDetail.getJobName(), jobExecution.getAllFailureExceptions()});		
							if(jobIgnore(jobDetail, jobLaunchPolicy)){
								log.info(">>>> Uncritical job [{}] will be ignored.", new Object[]{jobDetail.getJobName()});
								continue;
							}else{
								log.error(">>>> Executing critical job [{}] failed, program terminated.", new Object[]{jobDetail.getJobName()});
								throw new RuntimeException(String.format(">>>> Executing critical job [%s] failed, program terminated.", jobDetail.getJobName()));
							}
						}
					} catch (Throwable t) {
						log.error(">>>> Job [{}] executing failed due to exceptions: {}", new Object[]{jobDetail.getJobName(), t});
						if(jobIgnore(jobDetail, jobLaunchPolicy)){
							log.info(">>>> Uncritical job [{}] was ignored.", new Object[]{jobDetail.getJobName()});
							continue;
						}else{
							log.error(">>>> Executing critical job [{}] failed, all jobs was terminated .", new Object[]{jobDetail.getJobName()});
							throw new RuntimeException(String.format(">>>> Executing critical job [%s] failed, program terminated.", jobDetail.getJobName()));
						}
					} 
					
				} else if (currentJob == null && jobIgnore(jobDetail, jobLaunchPolicy)) {
					log.info(">>>> Uncritical job [{}] was ignored.", new Object[]{jobDetail.getJobName()});
					continue;
				} else {
					log.error(">>>> Current Job [{}] is null.", new Object[]{jobDetail.getJobName()});
					throw new RuntimeException(String.format(">>>> Current Job [%s] is null.", jobDetail.getJobName()));
				}
			}
		}finally{		
			MDC.clear();
		}	
	}
	
	@Override
	public void setApplicationContext(ApplicationContext context)
			throws BeansException {
		this.context = context;
	}

	/**
	 * @Description 通过Job名称获取对应的账务日期(分日切/日终)
	 * @param jobDetail
	 * @return
	 */
	private String getAccountDate(JobLaunchDetail jobDetail){
		JdbcTemplate jdbcTemplate = context.getBean(JdbcTemplate.class);
		String jobType = null;
		try{
			jobType = jdbcTemplate.queryForObject("select JOB_TYPE from BATCH_JOB where STATUS='1' and JOB_NAME = '" + jobDetail.getJobName() + "'", String.class);
		}catch(EmptyResultDataAccessException e){
			log.warn("Invalid STATUS or field JOB_TYPE in table BATCH_JOB is null");
			return null;
		}
		return jobType.equals("1") ? 
				jdbcTemplate.queryForObject("select CORE_DATE from TCOR_DAY_SYSTEM", String.class) : 
					jdbcTemplate.queryForObject("select ACC_DATE from TCOR_DAY_BATCH", String.class);
	}
	
	/**
	 * @Description 通过Job的bean name获取Job
	 * @param jobName job的bean name
	 * @return
	 */
	protected Job fetchJob(String jobName) {
		Object obj = context.getBean(jobName);
		return obj instanceof Job ? (Job)obj : null;
	}
	
	@Override
	public void afterPropertiesSet() throws Exception {
		Assert.notNull(jobLauncher, "jobLauncher is required");
		Assert.notNull(jobRepository, "jobRepository is required");
		Assert.notNull(jobDetails, "jobDetails is required");
	}

	private transient Logger log = LoggerFactory.getLogger(this.getClass());
	
	private ApplicationContext context;

	private JobLauncher jobLauncher;
	
	private JobRepository jobRepository;
	
	private List<JobLaunchDetail> jobDetails;
	

	/**
	 * @param jobLauncher the jobLauncher to set
	 */
	public void setJobLauncher(JobLauncher jobLauncher) {
		this.jobLauncher = jobLauncher;
	}
	
	/**
	 * @param jobRepository the jobRepository to set
	 */
	public void setJobRepository(JobRepository jobRepository) {
		this.jobRepository = jobRepository;
	}

	/**
	 * @param jobDetails the jobDetails to set
	 */
	public void setJobDetails(List<JobLaunchDetail> jobDetails) {
		this.jobDetails = jobDetails;
	}
	
	private JobLaunchPolicy jobLaunchPolicy = new JobLaunchPolicy(){
		@Override
		public boolean ignoreUncriticalJob() {
			return true;
		}
	};
	
	/**
	 * @Description 通过策略忽略作业
	 * @param jobDetail
	 * @param jobLaunchPolicy
	 * @return
	 * @author Somnus
	 */
	private boolean jobIgnore(JobLaunchDetail jobDetail, JobLaunchPolicy jobLaunchPolicy){
		return !jobDetail.isCritical() && jobLaunchPolicy.ignoreUncriticalJob();
	}
	
	private static final String PATTERN = "yyyyMMddHHmmSS";
	
	/**
	 * 日志追踪号
	 */
	private static final String TRACE_NO = "traceNo";
	
}
