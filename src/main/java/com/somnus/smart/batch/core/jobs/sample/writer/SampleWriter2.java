package com.somnus.smart.batch.core.jobs.sample.writer;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.item.ItemWriter;

import com.somnus.smart.batch.core.jobs.sample.model.TestC;

public class SampleWriter2 implements ItemWriter<TestC> {

	@Override
	public void write(List<? extends TestC> items) throws Exception {
		log.info(">>>> WRITER: {}", new Object[]{items});
		
	}

	private transient Logger log = LoggerFactory.getLogger(this.getClass());
}
