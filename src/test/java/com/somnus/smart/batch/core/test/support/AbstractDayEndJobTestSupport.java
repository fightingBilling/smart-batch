package com.somnus.smart.batch.core.test.support;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.somnus.smart.batch.core.joblaunchdetails.SimpleJobLaunchDetails;

/**
 * @Description: 日终测试案列基类
 * @author Somnus
 * @date 2015年7月30日 下午2:11:08 
 * @version V1.0
 */
public abstract class AbstractDayEndJobTestSupport extends AbstractSpringContextTestSupport {

	protected void launchJobDetail(SimpleJobLaunchDetails jobLauncher){
		Map<String, String> params = new HashMap<String, String>();
		params.put("identity", UUID.randomUUID().toString());
		params.put("mode", "manual");
		String datevalue = jdbcTemplate.queryForObject(GET_ACCOUNT_DATE_SQL, String.class);
		params.put("date", datevalue);
		jobLauncher.executeJobs(params);
	}
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private static final String GET_ACCOUNT_DATE_SQL = "select ACC_DATE from TCOR_DAY_BATCH";
}
