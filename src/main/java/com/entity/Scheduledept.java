package com.entity;

import java.util.Date;

public class Scheduledept {
    private Integer scheduledeptId;

    private String scheduledeptContent;

    private Date scheduledeptStartTime;

    private Date scheduledeptEndTime;

    private Date scheduledeptUpdateTime;

    private Date scheduledeptCreateTime;

    private Integer d_id;

	public Integer getScheduledeptId() {
        return scheduledeptId;
    }

    public void setScheduledeptId(Integer scheduledeptId) {
        this.scheduledeptId = scheduledeptId;
    }

    public String getScheduledeptContent() {
        return scheduledeptContent;
    }

    public void setScheduledeptContent(String scheduledeptContent) {
        this.scheduledeptContent = scheduledeptContent == null ? null : scheduledeptContent.trim();
    }

    public Date getScheduledeptStartTime() {
        return scheduledeptStartTime;
    }

    public void setScheduledeptStartTime(Date scheduledeptStartTime) {
        this.scheduledeptStartTime = scheduledeptStartTime;
    }

    public Date getScheduledeptEndTime() {
        return scheduledeptEndTime;
    }

    public void setScheduledeptEndTime(Date scheduledeptEndTime) {
        this.scheduledeptEndTime = scheduledeptEndTime;
    }

    public Date getScheduledeptUpdateTime() {
        return scheduledeptUpdateTime;
    }

    public void setScheduledeptUpdateTime(Date scheduledeptUpdateTime) {
        this.scheduledeptUpdateTime = scheduledeptUpdateTime;
    }

    public Date getScheduledeptCreateTime() {
        return scheduledeptCreateTime;
    }

    public void setScheduledeptCreateTime(Date scheduledeptCreateTime) {
        this.scheduledeptCreateTime = scheduledeptCreateTime;
    }

    public Integer getD_id() {
		return d_id;
	}

	public void setD_id(Integer d_id) {
		this.d_id = d_id;
	}
}