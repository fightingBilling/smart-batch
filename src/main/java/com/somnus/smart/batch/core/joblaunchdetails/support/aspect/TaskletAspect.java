package com.somnus.smart.batch.core.joblaunchdetails.support.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.batch.core.BatchStatus;

/**
 * @Description Tasklet Aspect
 * @author caobin
 * @date 2014-4-10
 * @version 1.0
 */
@Aspect
public class TaskletAspect extends AbstractBaseAspect{

	@Around("execution(* org.springframework.batch.core.step.tasklet.Tasklet.execute(..))")
	public Object around(final ProceedingJoinPoint objProceedingJoinPoint) throws Throwable{
		log.debug(">>>>> Enter into tasklet aspect");
		
		String stepName = getStepExecution(objProceedingJoinPoint).getStepName();
		String accDate = getStepExecution(objProceedingJoinPoint).getJobParameters().getString("date");
		log.info(">>>>>> STEP NAME(ASPECT): {}", new Object[]{stepName});
		log.info(">>>>>> ACCOUNT DATE(ASPECT): {}", new Object[]{accDate});
				
		if(forceExecStepnames.contains(stepName)){
			log.info(">>>>>> Current step [{}] using account date [{}] need to be executed forcefully.", new Object[]{stepName, accDate});
			return objProceedingJoinPoint.proceed();
		}
		
		String status = logicFlowCtrlDao.getCurrentStepStatus(accDate, stepName);
		if(BatchStatus.COMPLETED.toString().equals(status)){
			log.info(">>>>>> Current step [{}] using account date [{}] has been completed, skip executing.", new Object[]{stepName, accDate});
			return null;
		}
		log.info(">>>>>> Current step [{}] using account date [{}] has not been completed, continue executing.", new Object[]{stepName, accDate});
		return objProceedingJoinPoint.proceed();
	}
	
	public static void main(String[] args) {
		System.out.println(BatchStatus.COMPLETED.toString());
	}
	
	
	
}
