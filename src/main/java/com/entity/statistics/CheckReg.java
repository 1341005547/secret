package com.entity.statistics;


import com.entity.User;

/**
 * Class_出勤信息类
 * 
 * @author OneMax
 * 
 */
public class CheckReg {

	private User user;// 用户
	private String time;// 时间
	private int should;// 应签
	private int reality;// 实签
	private int late;// 迟到
	private int leavelary;// 早退
	private int absent;// 旷工
	private int ready;// 正常
	private int holiday;// 请假
	private int outwork;// 出差
	private int overtime;// 加班
	private int per;// 出勤率

	/**
	 * Construction_构造函数
	 */
	public CheckReg() {
	}

	/**
	 * Construction_构造函数
	 * 
	 * @param user
	 * @param time
	 * @param should
	 * @param reality
	 * @param late
	 * @param leavelary
	 * @param absent
	 * @param ready
	 * @param holiday
	 * @param outwork
	 * @param overtime
	 * @param per
	 */
	public CheckReg(User user, String time, int should, int reality,
			int late, int leavelary, int absent, int ready, int holiday,
			int outwork, int overtime, int per) {
		this.user = user;
		this.time = time;
		this.should = should;
		this.reality = reality;
		this.late = late;
		this.leavelary = leavelary;
		this.absent = absent;
		this.ready = ready;
		this.holiday = holiday;
		this.outwork = outwork;
		this.overtime = overtime;
		this.per = per;
	}

	/**
	 * Method_get
	 * 
	 * @return
	 */
	public User getUser() {
		return user;
	}

	/**
	 * Method_set
	 * 
	 * @param user
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * Method_get
	 * 
	 * @return
	 */
	public String getTime() {
		return time;
	}

	/**
	 * Method_set
	 * 
	 * @param time
	 */
	public void setTime(String time) {
		this.time = time;
	}

	/**
	 * Method_get
	 * 
	 * @return
	 */
	public int getShould() {
		return should;
	}

	/**
	 * Method_set
	 * 
	 * @param should
	 */
	public void setShould(int should) {
		this.should = should;
	}

	/**
	 * Method_get
	 * 
	 * @return
	 */
	public int getReality() {
		return reality;
	}

	/**
	 * Method_set
	 * 
	 * @param reality
	 */
	public void setReality(int reality) {
		this.reality = reality;
	}
	
	/**
	 * Method_get
	 * 
	 * @return
	 */
	public int getLate() {
		return late;
	}

	/**
	 * Method_set
	 * 
	 * @param late
	 */
	public void setLate(int late) {
		this.late = late;
	}

	/**
	 * Method_get
	 * 
	 * @return
	 */
	public int getLeavelary() {
		return leavelary;
	}

	/**
	 * Method_set
	 * 
	 * @param leavelary
	 */
	public void setLeavelary(int leavelary) {
		this.leavelary = leavelary;
	}

	/**
	 * Method_get
	 * 
	 * @return
	 */
	public int getAbsent() {
		return absent;
	}

	/**
	 * Method_set
	 * 
	 * @param absent
	 */
	public void setAbsent(int absent) {
		this.absent = absent;
	}

	/**
	 * Method_get
	 * 
	 * @return
	 */
	public int getReady() {
		return ready;
	}

	/**
	 * Method_set
	 * 
	 * @param ready
	 */
	public void setReady(int ready) {
		this.ready = ready;
	}

	/**
	 * Method_get
	 * 
	 * @return
	 */
	public int getHoliday() {
		return holiday;
	}

	/**
	 * Method_set
	 * 
	 * @param holiday
	 */
	public void setHoliday(int holiday) {
		this.holiday = holiday;
	}

	/**
	 * Method_get
	 * 
	 * @return
	 */
	public int getOutwork() {
		return outwork;
	}

	/**
	 * Method_set
	 * 
	 * @param outwork
	 */
	public void setOutwork(int outwork) {
		this.outwork = outwork;
	}

	/**
	 * Method_get
	 * 
	 * @return
	 */
	public int getOvertime() {
		return overtime;
	}

	/**
	 * Method_set
	 * 
	 * @param overtime
	 */
	public void setOvertime(int overtime) {
		this.overtime = overtime;
	}

	/**
	 * Method_get
	 * 
	 * @return
	 */
	public int getPer() {
		return per;
	}

	/**
	 * Method_set
	 * 
	 * @param per
	 */
	public void setPer(int per) {
		this.per = per;
	}

}
