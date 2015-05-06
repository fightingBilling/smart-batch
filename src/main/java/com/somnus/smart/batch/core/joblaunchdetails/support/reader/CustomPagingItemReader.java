package com.somnus.smart.batch.core.joblaunchdetails.support.reader;

import java.util.Collection;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * @Description 分页ItemReader
 * @author caobin
 * @date 2013-9-23
 * @version 1.0
 */
public abstract class CustomPagingItemReader<T> extends AbstractOraclePagingItemReader<T> implements CustomReader<T> {

	
	/**
	 * @Description logic code for reader part
	 * @return
	 * @author caobin
	 */
	public abstract T execute();
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	protected void doReadPage() {
		if (results == null) {
			results = new CopyOnWriteArrayList<T>();
		} else {
			results.clear();
		}
		Object result = execute();
		if(result instanceof Collection){
			results.addAll((Collection)result);
		}else{
			results.add((T)result);
		}
	}

	@Override
	protected void doJumpToPage(int itemIndex) {
	
	}

}
