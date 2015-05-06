package com.somnus.smart.batch.core.jobs.sample.dao;

import java.util.List;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.somnus.smart.batch.core.jobs.sample.model.TestA;
import com.somnus.smart.batch.core.jobs.sample.model.TestB;
import com.somnus.smart.batch.core.jobs.sample.model.TestC;
import com.somnus.smart.batch.support.mybatis.MyBatisRepository;

@MyBatisRepository
public interface SampleDao {
	
	/**
	 * @Description 初始化TestA记录
	 * @param testA
	 * @author caobin
	 */
	void initTestA(TestA testA);
	
	
	/**
	 * @Description 计算TestA中的总记录条数
	 * @return
	 * @author caobin
	 */
	int countTestA();
	
	/**
	 * @Description 分页查询TestA表中数据
	 * @param pageBounds 
	 * @return
	 * @author caobin
	 */
	PageList<TestA> queryPaged(PageBounds pageBounds);
	
	
	/**
	 * @Description 导入TestA中的数据到TestB
	 * @param testB
	 * @author caobin
	 */
	void exportToTestB(TestB testB);
	
	void delTestA();
	
	void delTestB();
	
	List<TestC> queryTestC(int pageSize);
	
	int countTestC();
	
	void updateTestC(long id);
}
