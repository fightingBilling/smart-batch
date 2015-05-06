package com.somnus.smart.batch.core.joblaunchdetails.support.listener;

import org.springframework.batch.core.BatchStatus;
import org.springframework.batch.core.ExitStatus;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobExecutionListener;
import org.springframework.batch.core.StepExecution;

public class AccTaskletJobExecutionListener implements JobExecutionListener {

    @Override
    public void beforeJob(JobExecution jobExecution) {
        // TODO Auto-generated method stub

    }

    @Override
    public void afterJob(JobExecution jobExecution) {
        
        for(StepExecution se:jobExecution.getStepExecutions()){
            if(!se.getStatus().equals(BatchStatus.COMPLETED)){
                jobExecution.setStatus(BatchStatus.FAILED);
                jobExecution.setExitStatus(ExitStatus.FAILED);
                break;
            }
        }
        
    }
}
