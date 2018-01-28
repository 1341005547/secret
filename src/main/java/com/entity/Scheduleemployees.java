package com.entity;

import java.util.Date;

public class Scheduleemployees {
    private Integer s_id;

    private String scheduleContent;

    private Date scheduleStartTime;

    private Date scheduleEndTime;

    private Date scheduleUpdateTime;

    private Date scheduleCreateTime;

    private Integer u_id;

	public Integer getS_id() {
		return s_id;
	}

	public void setS_id(Integer s_id) {
		this.s_id = s_id;
	}

	public String getScheduleContent() {
		return scheduleContent;
	}

	public void setScheduleContent(String scheduleContent) {
		this.scheduleContent = scheduleContent;
	}

	public Date getScheduleStartTime() {
		return scheduleStartTime;
	}

	public void setScheduleStartTime(Date scheduleStartTime) {
		this.scheduleStartTime = scheduleStartTime;
	}

	public Date getScheduleEndTime() {
		return scheduleEndTime;
	}

	public void setScheduleEndTime(Date scheduleEndTime) {
		this.scheduleEndTime = scheduleEndTime;
	}

	public Date getScheduleUpdateTime() {
		return scheduleUpdateTime;
	}

	public void setScheduleUpdateTime(Date scheduleUpdateTime) {
		this.scheduleUpdateTime = scheduleUpdateTime;
	}

	public Date getScheduleCreateTime() {
		return scheduleCreateTime;
	}

	public void setScheduleCreateTime(Date scheduleCreateTime) {
		this.scheduleCreateTime = scheduleCreateTime;
	}

	public Integer getU_id() {
		return u_id;
	}

	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}


}