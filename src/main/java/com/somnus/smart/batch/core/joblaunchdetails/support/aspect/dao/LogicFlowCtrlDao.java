package com.somnus.smart.batch.core.joblaunchdetails.support.aspect.dao;

import org.apache.ibatis.annotations.Param;

import com.somnus.smart.batch.support.mybatis.MyBatisRepository;

/**
 * @Description 用于逻辑流程控制DAO(主要针对STEP的控制)
 * @author caobin
 * @date 2014-4-13
 * @version 1.0
 */
@MyBatisRepository
public interface LogicFlowCtrlDao {

	/**
	 * @Description 当前步骤下，获取当前步骤上一状态
	 * @param accDate 账务日期
	 * @param stepName 步骤名称
	 * @return
	 * @author caobin
	 */
	String getCurrentStepStatus(@Param("accDate") String accDate, @Param("stepName") String stepName);
	
	
	/**
	 * @Description 非当前步骤下，获取当前步骤上一状态
	 * @param accDate 账务日期
	 * @param stepName 步骤名称
	 * @return
	 * @author caobin
	 */
	String getLastDayendStepStatus(@Param("accDate") String accDate, @Param("stepName") String stepName);
	
	
	/**
	 * @Description 判断昨日日终状态
	 * @param accDate
	 * @return
	 * @author caobin
	 */
	String checkYesterdayDayEnd(@Param("accDate") String accDate);
}
