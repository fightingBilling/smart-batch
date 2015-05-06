package com.somnus.smart.batch.core.joblaunchdetails.support;

/**
 * @Description  任务上下文定义
 * @author caobin
 * @date 2013-12-6
 * @version 1.0
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
	 * @author caobin
	 */
	public static void clearJobException(){
		JOB_EXCEPTION.remove();
	}
	
	/**
	 * 跳过异常定义
	 *//*
	private static final ThreadLocal<String> STEP_EXCEPTION = new ThreadLocal<String>(){
		@Override
		protected String initialValue() {
			return null;
		}
	};

	*//**
	 * @return the skipException
	 *//*
	public static ThreadLocal<String> getStepException() {
		return STEP_EXCEPTION;
	}
	
	*//**
	 * @Description 
	 * @author caobin
	 *//*
	public static void clearStepException(){
		STEP_EXCEPTION.remove();
	}*/

}
