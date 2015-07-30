package com.somnus.smart.batch.core.joblaunchdetails.support.listener;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.core.BatchStatus;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobExecutionListener;
import org.springframework.batch.core.StepExecution;
import org.springframework.beans.factory.annotation.Value;

import com.somnus.smart.batch.utils.MailUtil;
import com.somnus.smart.batch.utils.SmsRestfullClient;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午1:51:37 
 * @version V1.0
 */
public class DayCutAndDayEndListener implements JobExecutionListener {
    protected transient Logger log = LoggerFactory.getLogger(getClass());
    @Value("${mail.username}")
    private String            from;
    @Value("${mail.to}")
    private String            to;
    @Value("${mail.cc}")
    private String            cc;

    @Resource
    private MailUtil          mailUtil;
    @Resource
    private SmsRestfullClient smsRestfullClient;

    private String            DAY_CUT_JOB_NAME     = "dayCutoffJob";
    private String            DAY_CUT_SETP_NAME    = "dayCutoffJob.s3";
    private String            DAY_END_PRE_JOB_NAME = "dayEndPrepareJob";
    private String            LEDGER_JOB_NAME      = "ledgerJob";
    private String            LEDGER_SETP_NAME     = "ledgerJob.s3";

    private String            accDate;

    @Override
    public void beforeJob(JobExecution jobExecution) {
        // TODO Auto-generated method stub

    }

    @Override
    public void afterJob(JobExecution jobExecution) {
        String jobName = jobExecution.getJobInstance().getJobName();
        log.info(" JOB Name:" + jobName + " JOB Status:" + jobExecution.getStatus());
        String[] receive = to.split(";");
        accDate=jobExecution.getJobParameters().getString("date");
        for (StepExecution se : jobExecution.getStepExecutions()) {
            try {
                //如果是日切JOB
                if (DAY_CUT_JOB_NAME.equals(jobName)) {
                    //处理成功
                    if (se.getStatus().equals(BatchStatus.COMPLETED)
                        && DAY_CUT_SETP_NAME.equals(se.getStepName())) {
                        try {
                            mailUtil.sendDayCutSuccessMail(from, receive, cc, accDate);
                        } catch (Exception e) {
                            log.error("send mail exception", e);
                        }
                    } else if (se.getStatus().equals(BatchStatus.FAILED)) {//处理失败
                        try {
                            mailUtil.sendDayCutFailMail(from, receive, cc, accDate);
                        } catch (Exception e) {
                            log.error("send mail exception", e);
                        }
                        try {
                            smsRestfullClient.sendDayCutFailSms(accDate);
                        } catch (Exception e) {
                            log.error("send sms exception", e);
                        }
                    }
                } else if (DAY_END_PRE_JOB_NAME.equals(jobName)) {//如果是日终前准备JOB
                    //处理成功
                    if (se.getStatus().equals(BatchStatus.COMPLETED)) {
                    } else if (se.getStatus().equals(BatchStatus.FAILED)) {//处理失败
                        try {
                            mailUtil.sendDayEndFailMail(from, receive, cc, accDate);
                        } catch (Exception e) {
                            log.error("send mail exception", e);
                        }
                        try {
                            smsRestfullClient.sendDayEndFailSms(accDate);
                        } catch (Exception e) {
                            log.error("send sms exception", e);
                        }
                    }
                } else if (LEDGER_JOB_NAME.equals(jobName)) {//如果是分户账JOB
                    //处理成功
                    if (se.getStatus().equals(BatchStatus.COMPLETED)
                        && LEDGER_SETP_NAME.equals(se.getStepName())) {
                        try {
                            mailUtil.sendDayEndSuccessMail(from, receive, cc, accDate);
                        } catch (Exception e) {
                            log.error("send mail exception", e);
                        }
                    } else if (se.getStatus().equals(BatchStatus.FAILED)) {//处理失败
                        try {
                            mailUtil.sendDayEndFailMail(from, receive, cc, accDate);
                        } catch (Exception e) {
                            log.error("send mail exception", e);
                        }
                        try {
                            smsRestfullClient.sendDayEndFailSms(accDate);
                        } catch (Exception e) {
                            log.error("send sms exception", e);
                        }
                    }
                }
            } catch (Exception e) {
                log.error("Exception", e);
            }
        }
    }
    
}
