package com.somnus.smart.batch.core.jobs.sample.reader;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.somnus.smart.batch.core.joblaunchdetails.support.reader.CustomCountItemReader;
import com.somnus.smart.batch.core.jobs.sample.dao.SampleDao;
import com.somnus.smart.batch.core.jobs.sample.model.TestC;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午2:04:15 
 * @version V1.0
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
