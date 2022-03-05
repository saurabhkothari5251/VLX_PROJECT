package com.vlx.entity.copy;

import java.time.LocalDate;

public class UserMember {
	
	private Long id;
	private String type;
	private LocalDate toDate;
	private boolean status;
	public Long getId() {
		return id;
	}
	public UserMember() {
		
	}
	public UserMember(Long id, String type, LocalDate toDate, boolean status) {
		super();
		this.id = id;
		this.type = type;
		this.toDate = toDate;
		this.status = status;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public LocalDate getToDate() {
		return toDate;
	}
	public void setToDate(LocalDate toDate) {
		this.toDate = toDate;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}

}
