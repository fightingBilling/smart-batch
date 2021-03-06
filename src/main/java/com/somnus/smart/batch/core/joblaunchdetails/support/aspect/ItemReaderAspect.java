package com.somnus.smart.batch.core.joblaunchdetails.support.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.batch.core.BatchStatus;
import org.springframework.stereotype.Component;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午1:49:20 
 * @version V1.0
 */
@Component
@Aspect
public class ItemReaderAspect extends AbstractBaseAspect{
	
	@Around("execution(* org.springframework.batch.item.ItemReader.read(..))")
	public Object around(final ProceedingJoinPoint objProceedingJoinPoint) throws Throwable{
		log.debug(">>>>> Enter into itemReader aspect");
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
	
}
