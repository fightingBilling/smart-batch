package com.somnus.smart.batch.core.joblaunchdetails.support;

import java.beans.PropertyEditorSupport;

import org.apache.commons.lang.StringUtils;

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
}
