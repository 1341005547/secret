package com.entity;

import java.util.Date;

public class Announcement {
    private Integer announcementId;

    private String announcementTitle;

    private String announcementContent;

    private Integer uId;
    
    private String uname;//获取用户名

    private Date announcementCreateTime;
    
    private Integer announcementType;//判断存储的位置，0为公告，1为草稿箱

    public Integer getAnnouncementType() {
		return announcementType;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public void setAnnouncementType(Integer announcementType) {
		this.announcementType = announcementType;
	}

	public Integer getAnnouncementId() {
        return announcementId;
    }

    public void setAnnouncementId(Integer announcementId) {
        this.announcementId = announcementId;
    }

    public String getAnnouncementTitle() {
        return announcementTitle;
    }

    public void setAnnouncementTitle(String announcementTitle) {
        this.announcementTitle = announcementTitle == null ? null : announcementTitle.trim();
    }

    public String getAnnouncementContent() {
        return announcementContent;
    }

    public void setAnnouncementContent(String announcementContent) {
        this.announcementContent = announcementContent == null ? null : announcementContent.trim();
    }

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public Date getAnnouncementCreateTime() {
        return announcementCreateTime;
    }

    public void setAnnouncementCreateTime(Date announcementCreateTime) {
        this.announcementCreateTime = announcementCreateTime;
    }
}