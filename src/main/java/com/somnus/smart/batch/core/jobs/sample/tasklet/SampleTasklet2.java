package com.somnus.smart.batch.core.jobs.sample.tasklet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;
import org.springframework.beans.factory.annotation.Value;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午2:04:56 
 * @version V1.0
 */
public class SampleTasklet2 implements Tasklet {

	@Override
	public RepeatStatus execute(StepContribution stepcontribution,
			ChunkContext chunkcontext) throws Exception {

		log.info(">>>> Executing step3.");
		
		return RepeatStatus.FINISHED;
	}
	
	private transient Logger log = LoggerFactory.getLogger(this.getClass()); 
	
	@Value("#{jobParameters['date']}")
	private String pDate;

}
