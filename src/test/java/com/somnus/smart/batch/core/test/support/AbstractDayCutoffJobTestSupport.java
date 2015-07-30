package com.somnus.smart.batch.core.test.support;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.somnus.smart.batch.core.joblaunchdetails.SimpleJobLaunchDetails;

/**
 * @Description: 日切测试案列基类
 * @author Somnus
 * @date 2015年7月30日 下午2:10:35 
 * @version V1.0
 */
public abstract class AbstractDayCutoffJobTestSupport extends AbstractSpringContextTestSupport {

	protected void launchJobDetail(SimpleJobLaunchDetails jobLauncher){
		Map<String, String> params = new HashMap<String, String>();
		params.put("identity", UUID.randomUUID().toString());
		params.put("mode", "manual");
		
		String dateValue = jdbcTemplate.queryForObject(GET_ACCOUNT_DATE_SQL, String.class);
		
		params.put("date", dateValue);
		
		jobLauncher.executeJobs(params);
	}

	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	private static final String GET_ACCOUNT_DATE_SQL = "select CORE_DATE from TCOR_DAY_SYSTEM";
}
