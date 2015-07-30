package com.somnus.smart.schedule.daycutoff.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.somnus.smart.batch.core.joblaunchdetails.SimpleJobLaunchDetails;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午1:48:12 
 * @version V1.0
 */
public class DayCutoffAction{
	
	/**
	 * @Description 调度日切作业
	 */
	public void doDayCutoffJobDetails(){
		log.info(">>>> 开始自动调度日切作业");

		Map<String, String> jobParams = new HashMap<String, String>();
		jobParams.put("mode", "auto");
		
		dayCutoffJobLauncher.executeJobs(jobParams);
	}
	
	private transient Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Resource
	private SimpleJobLaunchDetails dayCutoffJobLauncher;
}
