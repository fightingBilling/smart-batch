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

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午2:05:13 
 * @version V1.0
 */
public class SampleWriter implements ItemWriter<TestA> {

	@Override
	public void write(List<? extends TestA> items) throws Exception {

		for(TestA item : items){
			TestB testB = new TestB();
			BeanUtils.copyProperties(item, testB);
			sampleDao.exportToTestB(testB);
		}		
	}
	
	private transient Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private SampleDao sampleDao;
}
