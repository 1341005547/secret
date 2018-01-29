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
    
    private Integer maxAId; //最大的申请ID
    
    private String aDExplain; //报销单项说明
    
    private Double aDPrice;	//报销单项价格
    	
    private String cdName; //报销单项名字
    
    private String rAResult; //处理结果
    
    private Integer dId; 	//调动前部门id
    private Integer disdId;  //调动后部门id
    private Integer pId;	//调动前职位id
    private Integer dpId;	 //调动后职位id
    
    private String dName; //调动前部门名

    private String pName; //调动前职位名
    
    private String disdName; //调动后部门名字
    
    private String dispName; //调动后职位名
    
    private Date dcTime; //调动时间
    
   private Integer processId; //流程表id
   
   
    
	public Integer getProcessId() {
	return processId;
}

public void setProcessId(Integer processId) {
	this.processId = processId;
}

	public String getdName() {
		return dName;
	}

	public void setdName(String dName) {
		this.dName = dName;
	}

	public Integer getdId() {
		return dId;
	}

	public void setdId(Integer dId) {
		this.dId = dId;
	}

	public Integer getDisdId() {
		return disdId;
	}

	public void setDisdId(Integer disdId) {
		this.disdId = disdId;
	}

	public Integer getpId() {
		return pId;
	}

	public void setpId(Integer pId) {
		this.pId = pId;
	}

	public Integer getDpId() {
		return dpId;
	}

	public void setDpId(Integer dpId) {
		this.dpId = dpId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getDisdName() {
		return disdName;
	}

	public void setDisdName(String disdName) {
		this.disdName = disdName;
	}

	public String getDispName() {
		return dispName;
	}

	public void setDispName(String dispName) {
		this.dispName = dispName;
	}

	public Date getDcTime() {
		return dcTime;
	}

	public void setDcTime(Date dcTime) {
		this.dcTime = dcTime;
	}

	public String getrAResult() {
		return rAResult;
	}

	public void setrAResult(String rAResult) {
		this.rAResult = rAResult;
	}

	public String getaDExplain() {
		return aDExplain;
	}

	public void setaDExplain(String aDExplain) {
		this.aDExplain = aDExplain;
	}

	public Double getaDPrice() {
		return aDPrice;
	}

	public void setaDPrice(Double aDPrice) {
		this.aDPrice = aDPrice;
	}

	public String getCdName() {
		return cdName;
	}

	public void setCdName(String cdName) {
		this.cdName = cdName;
	}

	public Integer getMaxAId() {
		return maxAId;
	}

	public void setMaxAId(Integer maxAId) {
		this.maxAId = maxAId;
	}

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