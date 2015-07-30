package com.somnus.smart.batch.core.jobs.sample.dao;

import java.util.List;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.somnus.smart.batch.core.jobs.sample.model.TestA;
import com.somnus.smart.batch.core.jobs.sample.model.TestB;
import com.somnus.smart.batch.core.jobs.sample.model.TestC;
import com.somnus.smart.batch.support.mybatis.MyBatisRepository;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午2:02:41 
 * @version V1.0
 */
@MyBatisRepository
public interface SampleDao {
	
	/**
	 * @Description 初始化TestA记录
	 * @param testA
	 */
	void initTestA(TestA testA);
	
	
	/**
	 * @Description 计算TestA中的总记录条数
	 * @return
	 */
	int countTestA();
	
	/**
	 * @Description 分页查询TestA表中数据
	 * @param pageBounds 
	 * @return
	 */
	PageList<TestA> queryPaged(PageBounds pageBounds);
	
	/**
     * @Description 分页查询TestC表中数据
     * @param pageBounds 
     * @return
     */
    PageList<TestC> queryPagedByC(PageBounds pageBounds);
	
	
	/**
	 * @Description 导入TestA中的数据到TestB
	 * @param testB
	 */
	void exportToTestB(TestB testB);
	
	void delTestA();
	
	void delTestB();
	
	List<TestC> queryTestC(int pageSize);
	
	int countTestC();
	
	void updateTestC(long id);
}
