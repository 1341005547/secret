package com.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class User_role {
    private Integer uRId;
    //用户id
    private Integer uId;
    //角色id
    private Integer rId;
    //授权时间
    private Date give_Power_Time;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") 
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    public Date getGive_power_time() {
    	return give_Power_Time;
	}

	public void setGive_power_time(Date give_power_time) {
		this.give_Power_Time = give_power_time;
	}

	public Integer getuRId() {
        return uRId;
    }

    public void setuRId(Integer uRId) {
        this.uRId = uRId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }
}