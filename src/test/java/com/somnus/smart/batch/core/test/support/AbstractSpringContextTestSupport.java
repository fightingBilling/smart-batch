package com.somnus.smart.batch.core.test.support;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.rules.TestName;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

/**
 * @Description: 基于spring-test的后台单元测试基类
 * @author Somnus
 * @date 2015年7月30日 下午2:11:39 
 * @version V1.0
 */
@ContextConfiguration(locations = {
		"classpath:/spring-env.xml",
		"classpath*:/spring-batch-*.xml",
		"classpath*:/jobs/*-job.xml"
})
@ActiveProfiles("dev")//激活配置
public abstract class AbstractSpringContextTestSupport  extends AbstractJUnit4SpringContextTests{
	protected transient Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Rule
	public TestName name = new TestName();
	
	@Before
	public void setUp(){
		log.info("调用测试方法: {}", new Object[]{name.getMethodName()});
	}
	
	@After
	public void tearDown(){
		//TODO ...
	}
}
