package com.somnus.smart.batch.core.jobs.sample.model;

import java.io.Serializable;

import org.apache.commons.lang.builder.ReflectionToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

public class TestC implements Serializable{

	private static final long serialVersionUID = 4467330248545672622L;

	private long id;
	
	private String field;
	
	private String status;

	
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
	 * @return the field
	 */
	public String getField() {
		return field;
	}


	/**
	 * @param field the field to set
	 */
	public void setField(String field) {
		this.field = field;
	}


	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}


	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
	}
	
}
