package com.somnus.smart.batch.core.joblaunchdetails.support;

/**
 * @Description: 任务上下文定义
 * @author Somnus
 * @date 2015年7月30日 下午1:55:21 
 * @version V1.0
 */
public class JobContext {

	/**
	 * 跳过异常定义
	 */
	private static final ThreadLocal<Throwable> SKIP_EXCEPTION = new ThreadLocal<Throwable>(){
		@Override
		protected Throwable initialValue() {
			return null;
		}
	};

	/**
	 * @return the skipException
	 */
	public static ThreadLocal<Throwable> getSkipException() {
		return SKIP_EXCEPTION;
	}
	
	/**
	 * @Description 
	 */
	public static void clearSkipException(){
		SKIP_EXCEPTION.remove();
	}

}
