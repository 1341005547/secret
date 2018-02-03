package com.entity;

import java.util.Date;

/**
 * 员工信息列表
 * @author Administrator
 * 几个表都公共的会用到用户的表和loing表以及部门表的名字，对应的职位，所以将他们的字段封到一个实体bean中方便接受查询结果。
 */
public class Staff {
	/*用户id*/
	private int uId;
	/*用户编码*/
	private String loginUsercode;
	/*用户名字*/
	private String uname;	
	/*用户性别*/
	private String usex;
	/*部门名称*/
	private String dname;
	/*职位*/
	private String professionName;
	/*员工状态*/
	private String ustate;
	/*用户邮箱*/
	private String uemail;
	/*用户头像*/
	private String uimg;
	/*用户就职时间*/
	private Date uStartTime;
	/*用户离职时间*/
	private Date uEndTime;
	/*用户的联系方式*/
	private String uphone;
	/*外键*/
	private Integer dId;	
	private Integer professionId;
	
	
	
	public Integer getdId() {
		return dId;
	}
	public void setdId(Integer dId) {
		this.dId = dId;
	}
	public Integer getProfessionId() {
		return professionId;
	}
	public void setProfessionId(Integer professionId) {
		this.professionId = professionId;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUimg() {
		return uimg;
	}
	public void setUimg(String uimg) {
		this.uimg = uimg;
	}
	public Date getuStartTime() {
		return uStartTime;
	}
	public void setuStartTime(Date uStartTime) {
		this.uStartTime = uStartTime;
	}
	public Date getuEndTime() {
		return uEndTime;
	}
	public void setuEndTime(Date uEndTime) {
		this.uEndTime = uEndTime;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
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
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getProfessionName() {
		return professionName;
	}
	public void setProfessionName(String professionName) {
		this.professionName = professionName;
	}
	public String getUstate() {
		return ustate;
	}
	public void setUstate(String ustate) {
		this.ustate = ustate;
	}
	public int getuId() {
		return uId;
	}
	public void setuId(int uId) {
		this.uId = uId;
	}
}
 