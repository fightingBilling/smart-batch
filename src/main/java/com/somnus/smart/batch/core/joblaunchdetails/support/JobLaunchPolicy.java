package com.somnus.smart.batch.core.joblaunchdetails.support;

/**
 * @Description: JOB加载策略
 * @author Somnus
 * @date 2015年7月30日 下午1:57:42 
 * @version V1.0
 */
public interface JobLaunchPolicy {

	/**
	 * @Description 忽略非关键任务
	 * @return
	 */
	boolean ignoreUncriticalJob();
	
	//TODO:可以添加更多的策略接口
}
