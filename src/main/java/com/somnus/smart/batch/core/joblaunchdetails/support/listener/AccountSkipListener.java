package com.somnus.smart.batch.core.joblaunchdetails.support.listener;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.core.SkipListener;

import com.somnus.smart.batch.core.joblaunchdetails.support.JobStepContext;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午1:50:04 
 * @version V1.0
 */
public class AccountSkipListener implements SkipListener<Object, Object> {

	private transient Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Override
	public void onSkipInRead(Throwable t) {
		onThrowable(t);
	}

	@Override
	public void onSkipInWrite(Object item, Throwable t) {
		onThrowable(t);
	}

	@Override
	public void onSkipInProcess(Object item, Throwable t) {
		onThrowable(t);
	}
	
	
	private void onThrowable(Throwable t){
		log.info(">>>>> detected skiped throwable: {}", new Object[]{ExceptionUtils.getFullStackTrace(t)});
		//更新当前线程异常变量
		JobStepContext.getJobException().set(t);
	}
	
	
}
