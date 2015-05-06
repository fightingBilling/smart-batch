package com.somnus.smart.batch.core.jobs.sample.tasklet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import com.somnus.smart.batch.core.jobs.sample.dao.SampleDao;
import com.somnus.smart.batch.core.jobs.sample.model.TestA;

public class SampleTasklet implements Tasklet {
	
	@Autowired
	private SampleDao sampleDao;
	
	
	@Override
	public RepeatStatus execute(StepContribution stepcontribution,
			ChunkContext chunkcontext) throws Exception {
		
		log.info(">>>> JOB PARAMS: date-{}", new Object[]{pDate});
		
		log.info(">>>> Executing sampleTasklet.");
		
		sampleDao.delTestA();
		sampleDao.delTestB();

		
		log.info(">>>> Tables cleaned.");
		
		TestA testA = null;
		
		for(int i = 1; i <= 100; i++){
			testA = new TestA();
			testA.setId(i);
			testA.setF1("F1_" + i);
			testA.setF2("F2_" + i);
			sampleDao.initTestA(testA);
		}
			
		
		log.info(">>>> Table TestA was initialized.");
		
		return RepeatStatus.FINISHED;
	}
	
	private transient Logger log = LoggerFactory.getLogger(this.getClass()); 
	
	@Value("#{jobParameters['date']}")
	private String pDate;

}
