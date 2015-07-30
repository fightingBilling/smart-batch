package com.somnus.smart.batch.core.joblaunchdetails.support.aspect.dao;

import org.apache.ibatis.annotations.Param;

import com.somnus.smart.batch.support.mybatis.MyBatisRepository;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午1:48:58 
 * @version V1.0
 */
@MyBatisRepository
public interface LogicFlowCtrlDao {

	/**
	 * @Description 当前步骤下，获取当前步骤上一状态
	 * @param accDate 账务日期
	 * @param stepName 步骤名称
	 * @return
	 */
	String getCurrentStepStatus(@Param("accDate") String accDate, @Param("stepName") String stepName);
	
	
	/**
	 * @Description 非当前步骤下，获取当前步骤上一状态
	 * @param accDate 账务日期
	 * @param stepName 步骤名称
	 * @return
	 */
	String getLastDayendStepStatus(@Param("accDate") String accDate, @Param("stepName") String stepName);
	
	
	/**
	 * @Description 判断昨日日终状态
	 * @param accDate
	 * @return
	 */
	String checkYesterdayDayEnd(@Param("accDate") String accDate);
}
