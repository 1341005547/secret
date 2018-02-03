package com.entity;

import java.util.Date;
/**
 * 考勤
 * @author Administrator
 *
 */
public class Oa_manual_sign {
    private Integer omsId;

    private Integer uId;

    private Date omsStartTime;

    private Date omsEndTime;

    private String omsState;
    
    private User user;
    
    private Professional professional;
    
    private String deptName;
    //查询出来的月份
    private String month;
    //查询出来的出勤天数
    private Integer quantity;
    //出勤率
    private int per;
    
    
    
  


	public int getPer() {
		return per;
	}

	public void setPer(int per) {
		this.per = per;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Professional getProfessional() {
		return professional;
	}

	public void setProfessional(Professional professional) {
		this.professional = professional;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getOmsId() {
        return omsId;
    }

    public void setOmsId(Integer omsId) {
        this.omsId = omsId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Date getOmsStartTime() {
        return omsStartTime;
    }

    public void setOmsStartTime(Date omsStartTime) {
        this.omsStartTime = omsStartTime;
    }

    public Date getOmsEndTime() {
        return omsEndTime;
    }

    public void setOmsEndTime(Date omsEndTime) {
        this.omsEndTime = omsEndTime;
    }

    public String getOmsState() {
        return omsState;
    }

    public void setOmsState(String omsState) {
        this.omsState = omsState == null ? null : omsState.trim();
    }
}