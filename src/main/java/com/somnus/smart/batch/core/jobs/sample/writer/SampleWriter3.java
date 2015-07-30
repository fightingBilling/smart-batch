package com.somnus.smart.batch.core.jobs.sample.writer;

import java.util.List;

import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.factory.annotation.Autowired;

import com.somnus.smart.batch.core.jobs.sample.dao.SampleDao;
import com.somnus.smart.batch.core.jobs.sample.model.TestC;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午2:05:37 
 * @version V1.0
 */
public class SampleWriter3 implements ItemWriter<List<TestC>> {
	@Override
	public void write(List<? extends List<TestC>> items) throws Exception {
		for(List<TestC> lstC : items){
			for(TestC c : lstC){
				sampleDao.updateTestC(c.getId());
			}
		}
	}
	
	@Autowired
	private SampleDao sampleDao;
	
}
