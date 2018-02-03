package com.entity;

import java.util.Date;

public class Role {
	//角色id
    private Integer rId;
    //角色名字
    private String rName;
    //角色创建者
    private Integer rUser;
    //角色描述
    private String r_Content;
	//角色创建时间
    private Date r_Create_Time;
    
    


	

	public String getR_Content() {
		return r_Content;
	}

	public void setR_Content(String r_Content) {
		this.r_Content = r_Content;
	}

	public Date getR_Create_Time() {
		return r_Create_Time;
	}

	public void setR_Create_Time(Date r_Create_Time) {
		this.r_Create_Time = r_Create_Time;
	}

	public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName == null ? null : rName.trim();
    }

    public Integer getrUser() {
        return rUser;
    }

    public void setrUser(Integer rUser) {
        this.rUser = rUser;
    }
}