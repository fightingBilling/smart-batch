package com.somnus.smart.batch.core.jobs.sample.reader;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.somnus.smart.batch.core.joblaunchdetails.support.reader.CustomCountItemReader;
import com.somnus.smart.batch.core.jobs.sample.dao.SampleDao;
import com.somnus.smart.batch.core.jobs.sample.model.TestC;

/**
 * @Description 
 * @author caobin
 * @date 2014-3-4
 * @version 1.0
 */
public class SamplePagingReader3 extends CustomCountItemReader<List<TestC>> {

	@Override
	public int getInitCount() {
		return sampleDao.countTestC();
	}

	@Override
	public List<TestC> execute() {
		List<TestC> lstTestC = sampleDao.queryTestC(pageSize);
		return lstTestC;
	}

	@Autowired
	private SampleDao sampleDao;
	
}
