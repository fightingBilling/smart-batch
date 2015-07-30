package com.somnus.smart.batch.core.joblaunchdetails.support;

/**
 * @Description: 任务上下文定义
 * @author Somnus
 * @date 2015年7月30日 下午1:58:06 
 * @version V1.0
 */
public class JobStepContext {

	/**
	 * 跳过异常定义
	 */
	private static final ThreadLocal<Throwable> JOB_EXCEPTION = new ThreadLocal<Throwable>(){
		@Override
		protected Throwable initialValue() {
			return null;
		}
	};

	/**
	 * @return the skipException
	 */
	public static ThreadLocal<Throwable> getJobException() {
		return JOB_EXCEPTION;
	}
	
	/**
	 * @Description 
	 */
	public static void clearJobException(){
		JOB_EXCEPTION.remove();
	}
	
}
