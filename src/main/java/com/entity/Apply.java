package com.entity;

import java.util.Date;



public class Apply {
    private Integer aId;

    private String tId;

    private String aEven;

    private String aLeaveTime;
    
    private Date aCreateTime;

    private String aState;

    private Integer uId;
    
    /**
     * 申请是否提交，0为提交 在草稿箱显示    1已提交在申请列表中显示
     */
    private Integer aSubmit;
    //为了在页面很容易的得到申请人的名字
    private String uName;
    //为了在页面容易得到申请类型
    private String aName;
    
    
	
    
	public String getaName() {
		return aName;
	}

	public void setaName(String aName) {
		this.aName = aName;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public Integer getaSubmit() {
		return aSubmit;
	}

	public void setaSubmit(Integer aSubmit) {
		this.aSubmit = aSubmit;
	}

	public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public String gettId() {
		return tId;
	}

	public void settId(String tId) {
		this.tId = tId;
	}

	public String getaEven() {
        return aEven;
    }

    public void setaEven(String aEven) {
        this.aEven = aEven == null ? null : aEven.trim();
    }

    public String getaLeaveTime() {
        return aLeaveTime;
    }

    public void setaLeaveTime(String aLeaveTime) {
        this.aLeaveTime = aLeaveTime == null ? null : aLeaveTime.trim();
    }

    public Date getaCreateTime() {
        return aCreateTime;
    }

    public void setaCreateTime(Date aCreateTime) {
        this.aCreateTime = aCreateTime ;
    }

    public String getaState() {
        return aState;
    }

    public void setaState(String aState) {
        this.aState = aState == null ? null : aState.trim();
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }
}