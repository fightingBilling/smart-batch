package com.somnus.smart.batch.core.joblaunchdetails.support.listener;

import org.springframework.batch.core.BatchStatus;
import org.springframework.batch.core.ExitStatus;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobExecutionListener;

import com.somnus.smart.batch.core.joblaunchdetails.support.JobContext;

public class CustomJobExecutionListener implements JobExecutionListener {

	@Override
	public void beforeJob(JobExecution jobExecution) {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterJob(JobExecution jobExecution) {
		
		Throwable t = JobContext.getSkipException().get();
		if(t != null){
			jobExecution.setStatus(BatchStatus.FAILED);
			jobExecution.setExitStatus(ExitStatus.FAILED);
		}
		JobContext.clearSkipException();
	}
}
