package com.somnus.smart.batch.core.test.support;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.somnus.smart.batch.core.joblaunchdetails.SimpleJobLaunchDetails;

/**
 * @Description 日终测试案列基类
 * @author caobin
 * @date 2013-10-12
 * @version 1.0
 */
public abstract class AbstractDayEndJobTestSupport extends AbstractSpringContextTestSupport {

	protected void launchJobDetail(SimpleJobLaunchDetails jobLauncher){
		Map<String, String> params = new HashMap<String, String>();
		params.put("identity", UUID.randomUUID().toString());
		params.put("mode", "manual");
		params.put("date", getAccountDate());
		jobLauncher.executeJobs(params);
	}
	
	/**
	 * @Description 获取账务日期
	 * @return
	 * @author caobin
	 */
	private String getAccountDate(){
		return jdbcTemplate.queryForObject(GET_ACCOUNT_DATE_SQL, String.class);
	}
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private final static String GET_ACCOUNT_DATE_SQL = "select ACC_DATE from TCOR_DAY_BATCH";
}
