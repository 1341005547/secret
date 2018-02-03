package com.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Thelog {
    private Integer thelogId;

    private Integer uId;

    private Date thelogLoginTime;

    private Date thelogOutTime;

    private String thelogIp;
    
    private String uname;

    public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public Integer getThelogId() {
        return thelogId;
    }

    public void setThelogId(Integer thelogId) {
        this.thelogId = thelogId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") 
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    public Date getThelogLoginTime() {
        return thelogLoginTime;
    }

    public void setThelogLoginTime(Date thelogLoginTime) {
        this.thelogLoginTime = thelogLoginTime;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") 
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    public Date getThelogOutTime() {
        return thelogOutTime;
    }

    public void setThelogOutTime(Date thelogOutTime) {
        this.thelogOutTime = thelogOutTime;
    }

    public String getThelogIp() {
        return thelogIp;
    }

    public void setThelogIp(String thelogIp) {
        this.thelogIp = thelogIp == null ? null : thelogIp.trim();
    }
}