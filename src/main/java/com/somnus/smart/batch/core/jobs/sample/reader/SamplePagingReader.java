package com.somnus.smart.batch.core.jobs.sample.reader;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.somnus.smart.batch.core.joblaunchdetails.support.reader.CustomPagingItemReader;
import com.somnus.smart.batch.core.jobs.sample.dao.SampleDao;
import com.somnus.smart.batch.core.jobs.sample.model.TestA;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午2:03:32 
 * @version V1.0
 */
public class SamplePagingReader extends CustomPagingItemReader<List<TestA>> {

	@Override
	public List<TestA> execute() {
		log.info("===========================================> {}", new Object[]{pDate});
		log.info("Executing sampleReader...");
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			throw new RuntimeException(e);
		}
		PageBounds pageBounds = new PageBounds(this.getPage(), this.getPageSize());
		PageList<TestA> lstTestA = sampleDao.queryPaged(pageBounds);
		log.info(">>>> Sample paging reader: count = {}", new Object[]{lstTestA.getPaginator().getTotalCount()});
		return lstTestA;
	}


	@Autowired
	private SampleDao sampleDao;
	
	@Value("#{jobParameters['date']}")
	private String pDate;
	
	private transient Logger log = LoggerFactory.getLogger(this.getClass());
}
