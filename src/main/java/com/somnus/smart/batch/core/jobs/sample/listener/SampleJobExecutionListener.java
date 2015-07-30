package com.somnus.smart.batch.core.jobs.sample.listener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobExecutionListener;

/**
 * @Description: 范例（无配置进去）
 * @author Somnus
 * @date 2015年7月30日 下午2:02:59 
 * @version V1.0
 */
public class SampleJobExecutionListener implements JobExecutionListener {

	@Override
	public void afterJob(JobExecution jobexecution) {
		
	}

	@Override
	public void beforeJob(JobExecution jobexecution) {
		log.info(">>>> 检查TESTA表中是否有数据");
	}

	private transient Logger log = LoggerFactory.getLogger(this.getClass());
}
