package com.somnus.smart.batch.core.jobs.sample.model;

import java.io.Serializable;

import org.apache.commons.lang.builder.ReflectionToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

public class TestB implements Serializable {

	private static final long serialVersionUID = -7919265201404517381L;

	private long id;
	
	private String f1;
	
	private String f2;


	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the f1
	 */
	public String getF1() {
		return f1;
	}

	/**
	 * @param f1 the f1 to set
	 */
	public void setF1(String f1) {
		this.f1 = f1;
	}

	/**
	 * @return the f2
	 */
	public String getF2() {
		return f2;
	}

	/**
	 * @param f2 the f2 to set
	 */
	public void setF2(String f2) {
		this.f2 = f2;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
	}
}
