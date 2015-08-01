package com.somnus.smart.batch.core.joblaunchdetails.support;

import java.beans.PropertyEditorSupport;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.builder.ReflectionToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * @Description: 将<jobName>:<isCritical>字符串转化为<code>JobLaunchDetail</code>
 * @author Somnus
 * @date 2015年7月30日 下午1:56:05 
 * @version V1.0
 */
public class JobLaunchDetailPropertyEditor extends PropertyEditorSupport {
    @Override  
    public void setAsText(String text) throws IllegalArgumentException { 
    	if(StringUtils.isBlank(text)){
    		throw new IllegalStateException("Converting String to JobLaunchDetail: string is blank.");
    	}
    	String[] arrays = text.split(":");
    	if(arrays.length!=2){
    		throw new IllegalStateException("Converting String to JobLaunchDetail: string format is invalid.");
    	}
    	JobLaunchDetail detail = new JobLaunchDetail();
    	detail.setJobName(arrays[0]);
    	detail.setCritical(Boolean.valueOf(arrays[1]));
    	setValue(detail);
    }
    /**
     * @Description: Job加载细节
     * @author Somnus
     * @date 2015年7月30日 下午1:55:41 
     * @version V1.0
     */
    public static class JobLaunchDetail {
    	
    	/**
    	 * JOB名称
    	 */
    	private String jobName;
    	
    	/**
    	 * （是否）关键任务
    	 */
    	private boolean critical;

    	/**
    	 * @return the jobName
    	 */
    	public String getJobName() {
    		return jobName;
    	}

    	/**
    	 * @param jobName the jobName to set
    	 */
    	public void setJobName(String jobName) {
    		this.jobName = jobName;
    	}

    	/**
    	 * @return the critical
    	 */
    	public boolean isCritical() {
    		return critical;
    	}

    	/**
    	 * @param critical the critical to set
    	 */
    	public void setCritical(boolean critical) {
    		this.critical = critical;
    	}

    	@Override
    	public String toString() {
    		return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
    	}
    }
}
