package com.somnus.smart.batch.core.joblaunchdetails.support.reader;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.batch.core.StepExecution;
import org.springframework.batch.core.annotation.BeforeStep;
import org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.util.Assert;
import org.springframework.util.ClassUtils;

public abstract class AbstractOraclePagingItemReader<T> extends
		AbstractItemCountingItemStreamItemReader<T> implements InitializingBean{

	 protected StepExecution stepExecution;

	 @BeforeStep
	 public void saveStepExecution(StepExecution stepExecution) {
	     this.stepExecution = stepExecution;
	 }
	
	protected Log logger = LogFactory.getLog(getClass());

	private volatile boolean initialized = false;

	private int pageSize = 10;

	private volatile int current = 0;

	private volatile int page = 1;

	protected volatile List<T> results;

	private Object lock = new Object();

	public AbstractOraclePagingItemReader() {
		setName(ClassUtils.getShortName(AbstractOraclePagingItemReader.class));
	}

	/**
	 * The current page number.
	 * @return the current page
	 */
	public int getPage() {
		return page;
	}

	/**
	 * The page size configured for this reader.
	 * @return the page size
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * The number of rows to retrieve at a time.
	 *
	 * @param pageSize the number of rows to fetch per page
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * Check mandatory properties.
	 * @see org.springframework.beans.factory.InitializingBean#afterPropertiesSet()
	 */
	@Override
	public void afterPropertiesSet() throws Exception {
		Assert.isTrue(pageSize > 0, "pageSize must be greater than zero");
	}

	@Override
	protected T doRead() throws Exception {

		synchronized (lock) {

			if (results == null || current >= pageSize) {

				if (logger.isDebugEnabled()) {
					logger.debug("Reading page " + getPage());
				}

				doReadPage();
				page++;
				if (current >= pageSize) {
					current = 0;
				}

			}

			int next = current++;
			if (next < results.size()) {
				return results.get(next);
			}
			else {
				return null;
			}

		}

	}

	abstract protected void doReadPage();

	@Override
	protected void doOpen() throws Exception {

		Assert.state(!initialized, "Cannot open an already opened ItemReader, call close first");
		initialized = true;

	}

	@Override
	protected void doClose() throws Exception {

		synchronized (lock) {
			initialized = false;
			current = 0;
			page = 0;
			results = null;
		}

	}

	@Override
	protected void jumpToItem(int itemIndex) throws Exception {

		synchronized (lock) {
			page = itemIndex / pageSize;
			current = itemIndex % pageSize;
		}

		doJumpToPage(itemIndex);

		if (logger.isDebugEnabled()) {
			logger.debug("Jumping to page " + getPage() + " and index " + current);
		}

	}

	abstract protected void doJumpToPage(int itemIndex);
}
