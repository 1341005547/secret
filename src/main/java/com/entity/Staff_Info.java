package com.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 用来接受员工详细信息的bean
 * 
 * @author Administrator
 *
 */
public class Staff_Info {
	private Integer uId;// 员工Id

	private String uName;// 员工名字
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date uStartTime;// 员工入职时间

	private Date uEndTime;// 员工离职时间

	private String uPhone;// 员工电话

	private String uSex;// 员工性别

	private String uImg;// 员工照片

	private String uState;// 员工状态

	private Integer dId;// 部门Id外键

	private Integer professionalId;// 职位id外键

	private String loginUsercode;// 用户编码

	private String rName;// 用户对应的角色名称
	private String dName;// 用户对应的部门名称
	private String professionalName;// 用户对应的职位名称

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
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

	public String getuPhone() {
		return uPhone;
	}

	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}

	public String getuSex() {
		return uSex;
	}

	public void setuSex(String uSex) {
		this.uSex = uSex;
	}

	public String getuImg() {
		return uImg;
	}

	public void setuImg(String uImg) {
		this.uImg = uImg;
	}

	public String getuState() {
		return uState;
	}

	public void setuState(String uState) {
		this.uState = uState;
	}

	public Integer getdId() {
		return dId;
	}

	public void setdId(Integer dId) {
		this.dId = dId;
	}

	public Integer getProfessionalId() {
		return professionalId;
	}

	public void setProfessionalId(Integer professionalId) {
		this.professionalId = professionalId;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public String getdName() {
		return dName;
	}

	public void setdName(String dName) {
		this.dName = dName;
	}

	public String getProfessionalName() {
		return professionalName;
	}

	public void setProfessionalName(String professionalName) {
		this.professionalName = professionalName;
	}

	public String getLoginUsercode() {
		return loginUsercode;
	}

	public void setLoginUsercode(String loginUsercode) {
		this.loginUsercode = loginUsercode;
	}
}
