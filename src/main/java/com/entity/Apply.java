package com.entity;

import java.util.Date;

public class Apply {
    private Integer aId;

    private Integer tId;

    private String aEven;

    private String aLeaveTime;

    private Date aCreateTime;

    private String aState;

    private Integer uId;
    
    private Integer aSubmit;
    /**
     * 显示申请人名称
     */
    private String uName;
    
    /**
     * 显示类型
     */
    private String tName;
    
    /**
     * 显示最大申报单id
     */
    private Integer max;
    
	public Integer getMax() {
		return max;
	}

	public void setMax(Integer max) {
		this.max = max;
	}

	public String gettName() {
		return tName;
	}

	public void settName(String tName) {
		this.tName = tName;
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

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
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
        this.aCreateTime = aCreateTime;
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