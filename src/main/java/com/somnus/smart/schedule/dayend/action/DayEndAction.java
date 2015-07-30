package com.somnus.smart.schedule.dayend.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.somnus.smart.batch.core.joblaunchdetails.SimpleJobLaunchDetails;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午1:48:31 
 * @version V1.0
 */
public class DayEndAction{

	/**
	 * @Description 调度日终作业
	 */
	public void doDayEndJobDetails(){
		log.info(">>>> 开始自动调度日终作业");
		
		Map<String, String> jobParams = new HashMap<String, String>();
		jobParams.put("mode", "auto");
		
		dayEndJobLauncher.executeJobs(jobParams);
	}
	
	private transient Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Resource
	private SimpleJobLaunchDetails dayEndJobLauncher;
	
}
