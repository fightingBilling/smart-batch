package com.somnus.smart.batch.core.joblaunchdetails.support.listener;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.springframework.batch.core.BatchStatus;
import org.springframework.batch.core.ExitStatus;
import org.springframework.batch.core.StepExecution;
import org.springframework.batch.core.StepExecutionListener;

import com.somnus.smart.batch.core.joblaunchdetails.support.JobStepContext;

/**
 * @Description STEP监听器
 * @author caobin
 * @date 2013-10-11
 * @version 1.0
 */
public class AccountStepExecutionListener implements StepExecutionListener {

	@Override
	public void beforeStep(StepExecution stepExecution) {
		// TODO Auto-generated method stub
	}

	@Override
	public ExitStatus afterStep(StepExecution stepExecution) {
		Throwable t = JobStepContext.getJobException().get();
		if(stepExecution.getSkipCount()>0){
			stepExecution.setStatus(BatchStatus.FAILED);
			stepExecution.setExitStatus(new ExitStatus(ExitStatus.FAILED.getExitCode(), ExceptionUtils.getFullStackTrace(t)));
		}
		JobStepContext.clearJobException();
		return stepExecution.getExitStatus();
	}
	

}
