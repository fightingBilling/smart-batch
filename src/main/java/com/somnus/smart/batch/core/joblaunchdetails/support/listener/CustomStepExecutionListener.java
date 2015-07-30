package com.somnus.smart.batch.core.joblaunchdetails.support.listener;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.springframework.batch.core.BatchStatus;
import org.springframework.batch.core.ExitStatus;
import org.springframework.batch.core.StepExecution;
import org.springframework.batch.core.StepExecutionListener;

import com.somnus.smart.batch.core.joblaunchdetails.support.JobContext;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午1:51:25 
 * @version V1.0
 */
public class CustomStepExecutionListener implements StepExecutionListener {

	@Override
	public void beforeStep(StepExecution stepExecution) {
		// TODO Auto-generated method stub
	}

	@Override
	public ExitStatus afterStep(StepExecution stepExecution) {
		Throwable t = JobContext.getSkipException().get();
		if(t != null){
			stepExecution.setStatus(BatchStatus.FAILED);
			stepExecution.setExitStatus(new ExitStatus(ExitStatus.FAILED.getExitCode(), ExceptionUtils.getFullStackTrace(t)));
		}
		
		return stepExecution.getExitStatus();
	}
	
}
