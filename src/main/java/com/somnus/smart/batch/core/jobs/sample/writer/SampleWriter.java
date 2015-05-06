package com.somnus.smart.batch.core.jobs.sample.writer;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.somnus.smart.batch.core.jobs.sample.dao.SampleDao;
import com.somnus.smart.batch.core.jobs.sample.model.TestA;
import com.somnus.smart.batch.core.jobs.sample.model.TestB;

public class SampleWriter implements ItemWriter<TestA> {

	@Override
	public void write(List<? extends TestA> items) throws Exception {

		for(TestA item : items){
			TestB testB = new TestB();
			BeanUtils.copyProperties(item, testB);
			//if(item.getId() == 7)testB.setId(6);
			//if(item.getId() == 77)testB.setId(76);
			sampleDao.exportToTestB(testB);
		}		
	}
	
	private transient Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private SampleDao sampleDao;
}
