package com.somnus.smart.batch.core.job;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import com.somnus.smart.batch.core.joblaunchdetails.SimpleJobLaunchDetails;
import com.somnus.smart.batch.core.test.support.AbstractDayEndJobTestSupport;

/**
 * @Description 样例作业测试案例
 * @author caobin
 * @date 2013-10-8
 * @version 1.0
 */
public class SampleJobTestcase extends AbstractDayEndJobTestSupport {

	@Test
	public void doSampleJob(){
		this.launchJobDetail(sampleJobLauncher);
	}
	
	@Test
	public void doSampleJob2(){
		this.launchJobDetail(sampleJobLauncher2);
	}
	
	@Test
	public void initTestC() throws SQLException{
		txTemplate.execute(new TransactionCallback<Object>() {

			@Override
			public Object doInTransaction(TransactionStatus status) {
				jdbcTemplate.execute("truncate table TESTC");
				for(int i = 1; i <= 100; i++){
					jdbcTemplate.execute(String.format("insert into TESTC values(%s,'%s','%s')", i, UUID.randomUUID().getLeastSignificantBits(), '1'));
				}
				return null;
			}
		});
	}
	
	
	@Test
	public void doSampleJob3(){
		this.launchJobDetail(sampleJobLauncher3);
	}
	
	@Resource
	private SimpleJobLaunchDetails sampleJobLauncher;
	
	@Resource
	private SimpleJobLaunchDetails sampleJobLauncher2;
	
	@Resource
	private SimpleJobLaunchDetails sampleJobLauncher3;
	
	@Autowired
	private TransactionTemplate txTemplate;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
}
