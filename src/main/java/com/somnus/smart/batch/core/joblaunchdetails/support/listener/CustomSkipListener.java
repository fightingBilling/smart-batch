package com.somnus.smart.batch.core.joblaunchdetails.support.listener;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.exception.ExceptionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.core.SkipListener;

import com.somnus.smart.batch.core.joblaunchdetails.support.JobContext;

/**
 * @Description 
 * @author caobin
 * @date 2013-12-6
 * @version 1.0
 */
public class CustomSkipListener implements SkipListener<Object, Object> {

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
		try {
			FileUtils.write(new File("c:/batch_skip.txt"), "=========" + ExceptionUtils.getFullStackTrace(t) + "\n", true);
		} catch (IOException e) {
			log.error(e.getMessage());
		}
		//更新当前线程异常变量
		JobContext.getSkipException().set(t);
	}
	
	
}
