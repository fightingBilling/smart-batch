package com.somnus.smart.batch.core.jobs.sample.writer;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.item.ItemWriter;

import com.somnus.smart.batch.core.jobs.sample.model.TestC;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午2:05:25 
 * @version V1.0
 */
public class SampleWriter2 implements ItemWriter<TestC> {

	@Override
	public void write(List<? extends TestC> items) throws Exception {
		log.info(">>>> WRITER: {}", new Object[]{items});
		
	}

	private transient Logger log = LoggerFactory.getLogger(this.getClass());
}
