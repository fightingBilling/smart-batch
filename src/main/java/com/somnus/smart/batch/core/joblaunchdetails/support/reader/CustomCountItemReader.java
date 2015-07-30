package com.somnus.smart.batch.core.joblaunchdetails.support.reader;

import java.math.BigDecimal;
import java.math.RoundingMode;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.core.StepExecution;
import org.springframework.batch.core.annotation.BeforeStep;
import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.NonTransientResourceException;
import org.springframework.batch.item.ParseException;
import org.springframework.batch.item.UnexpectedInputException;
import org.springframework.beans.factory.InitializingBean;

/**
 * @Description: SQL恒定计数的ITEMREADER
 * @author Somnus
 * @date 2015年7月30日 下午1:53:34 
 * @version V1.0
 */
public abstract class CustomCountItemReader<T> implements ItemReader<T>, CustomReader<T>, InitializingBean {
	
	 protected StepExecution stepExecution;

	 @BeforeStep
	 public void saveStepExecution(StepExecution stepExecution) {
	     this.stepExecution = stepExecution;
	 }
	
	private final static ThreadLocal<Integer> countTL = new ThreadLocal<Integer>(){
		@Override
		protected Integer initialValue() {			
			return -1;
		}		
	};
	
	
	/**
	 * @Description 获取初始化总数
	 * @return
	 * @author caobin
	 */
	public abstract int getInitCount();
	
	/**
	 * @Description 执行方法
	 * @return
	 * @author caobin
	 */
	public abstract T execute();
	
	@Override
	public T read() throws Exception, UnexpectedInputException,
			ParseException, NonTransientResourceException {
		
		if(countTL.get() < 0){
			countTL.set(new BigDecimal(getInitCount()).divide(new BigDecimal(pageSize), 0, RoundingMode.CEILING).intValue());	
		}
		
		log.debug(">>> current countTL: {}", new Object[]{countTL.get()});
		
		if(countTL.get() > 0){
			countTL.set(countTL.get() - 1);
			return execute();
		}
		
		countTL.remove();
		return null;
	}
	
	@Override
	public void afterPropertiesSet() throws Exception {
		if(pageSize <= 0){
			throw new RuntimeException("pageSize must be more than 0");
		}
	}

	private transient Logger log = LoggerFactory.getLogger(this.getClass());

	protected int pageSize;

	/**
	 * @param pageSize the pageSize to set
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
}
