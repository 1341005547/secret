package com.entity.matters;

public class PostDispatch {
    private Integer dispatchId;

    private Integer uId;
    
    private String loginUsercode;
    
    private String uname;
    
    private String beforePost;
    
    private String afterPost;

    private Integer dispatchUId;
    
    private String dispatchName;

    private Integer dispatchCreateTime;

    private Integer pId;
    
    private String dispatchResult;
    
    private String dispatchOpinion;
    
    private String dispatchNote;
    
    private Integer dispatchPId;
    
    


	public String getLoginUsercode() {
		return loginUsercode;
	}


	public void setLoginUsercode(String loginUsercode) {
		this.loginUsercode = loginUsercode;
	}


	public String getUname() {
		return uname;
	}


	public void setUname(String uname) {
		this.uname = uname;
	}


	public String getBeforePost() {
		return beforePost;
	}


	public void setBeforePost(String beforePost) {
		this.beforePost = beforePost;
	}


	public String getAfterPost() {
		return afterPost;
	}


	public void setAfterPost(String afterPost) {
		this.afterPost = afterPost;
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

    public Integer getDispatchCreateTime() {
        return dispatchCreateTime;
    }

    public void setDispatchCreateTime(Integer dispatchCreateTime) {
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