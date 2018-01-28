package com.entity;

import java.util.Date;

public class Calendar {
	private Integer s_id;

    private String title;

    private Date start;

    private Date end;

    private Integer u_id;
    
    private Integer scheduledeptId;
    
    private Integer d_id;

	public Integer getS_id() {
		return s_id;
	}

	public void setS_id(Integer s_id) {
		this.s_id = s_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	public Integer getU_id() {
		return u_id;
	}

	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	
	public Integer getScheduledeptId() {
		return scheduledeptId;
	}

	public void setScheduledeptId(Integer scheduledeptId) {
		this.scheduledeptId = scheduledeptId;
	}

	public Integer getD_id() {
		return d_id;
	}

	public void setD_id(Integer d_id) {
		this.d_id = d_id;
	}
}
