package com.entity;

import java.util.Date;

public class Dispatch {
    private Integer dispatchId;

    private Integer uId;

    private Integer dispatchUId;

    private Date dispatchCreateTime;
    
    private Integer aId;
    

	/**
     * 调动前的职位
     */
    private Integer pId;
    /**
     * 调动后的职位
     */
    private Integer dispatchPId;
    
    /**
     * 调动前的部门
     */
    private Integer dId;
    /**
     * 调动后的部门
     */
    private Integer dispatchDId;

    public Integer getaId() {
		return aId;
	}

	public void setaId(Integer aId) {
		this.aId = aId;
	}
    public Integer getdId() {
		return dId;
	}

	public void setdId(Integer dId) {
		this.dId = dId;
	}

	public Integer getDispatchDId() {
		return dispatchDId;
	}

	public void setDispatchDId(Integer dispatchDId) {
		this.dispatchDId = dispatchDId;
	}

	public Integer getDispatchId() {
        return dispatchId;
    }

    public void setDispatchId(Integer dispatchId) {
        this.dispatchId = dispatchId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Integer getDispatchUId() {
        return dispatchUId;
    }

    public void setDispatchUId(Integer dispatchUId) {
        this.dispatchUId = dispatchUId;
    }

    public Date getDispatchCreateTime() {
        return dispatchCreateTime;
    }

    public void setDispatchCreateTime(Date dispatchCreateTime) {
        this.dispatchCreateTime = dispatchCreateTime;
    }

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public Integer getDispatchPId() {
        return dispatchPId;
    }

    public void setDispatchPId(Integer dispatchPId) {
        this.dispatchPId = dispatchPId;
    }
}