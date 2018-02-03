package com.entity.matters;

public class PostDispatchDetail {
	private Integer dispatchId;//调动信息编号
    
    private String uname;//被调动人姓名
    
    private String loginUsercode;//被调动人登陆编号
    
    private String beforePost;//调动前职务
    
    private String afterPost;//调动后职务
    
    private String dispatchName;//调动处理人名字

    private Integer dispatchCreateTime;//调动创建时间
    
    private String dispatchResult;//调动审批结果
    
    private String dispatchOpinion;//调动处理人意见
    
    private String dispatchNote;//调动请求标注
    


    
    


	public String getDispatchName() {
		return dispatchName;
	}


	public void setDispatchName(String dispatchName) {
		this.dispatchName = dispatchName;
	}


	public String getDispatchResult() {
		return dispatchResult;
	}


	public void setDispatchResult(String dispatchResult) {
		this.dispatchResult = dispatchResult;
	}


	public String getDispatchOpinion() {
		return dispatchOpinion;
	}


	public void setDispatchOpinion(String dispatchOpinion) {
		this.dispatchOpinion = dispatchOpinion;
	}


	public String getDispatchNote() {
		return dispatchNote;
	}


	public void setDispatchNote(String dispatchNote) {
		this.dispatchNote = dispatchNote;
	}


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

    

    public Integer getDispatchCreateTime() {
        return dispatchCreateTime;
    }

    public void setDispatchCreateTime(Integer dispatchCreateTime) {
        this.dispatchCreateTime = dispatchCreateTime;
    }

  

    
}
