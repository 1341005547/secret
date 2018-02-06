package com.entity.statistics;


/**
 * Created by Administrator on 2018/1/22.
 */

public class ViewDateMain {

    /**
     * 部门总数
     */

    private long deptSaleNum;
    /**
     *部门总数
     */

    private long deptSearchNum;
    /**
     *部门总数
     */

    private long deptManagerNum;
    /**
     * 获得当前用户所在部门的总数
     */
    private long currentDeptNum;
    /**
     *部门正常考勤总数
     */

    private long deptSaleNumNormal;
    /**
     *部门正常考勤总数
     */

    private long deptManagerNumNormal;
    /**
     *部门正常考勤总数
     */

    private long deptSearchNumNormal;
    /**
     * 获得当前登陆用户所在部门的正常考勤总数
     */
    private long currentDeptNumNormal;
    /**
     *部门请假率
     */
    private double leaveRate;
    /**
     *部门旷工率
     */
    private double neglectRate;
    /**
     *部门迟到率
     */
    private double lateRate;
    /**
     *部门早退率
     */
    private double earlyRate;

    /**
     *部门请假总数
     */
    private long leaveNum;
    /**
     *部门旷工总数
     */
    private long neglectNum;
    /**
     *部门迟到总数
     */
    private long lateNum;
    /**
     *部门早退总数
     */
    private long earlyNum;

    /**
     *部门变化请假率
     */
    private double leaveLastMonth;
    /**
     *部门变化旷工率
     */
    private double neglectLastMonth;
    /**
     *部门变化迟到率
     */
    private double lateLastMonth;
    /**
     *部门变化早退率
     */
    private double earlyLastMonth;
    /**
     * 本部门正常考勤率
     */
    private double currentDeptRate;
    /**
     * 其他部门
     */
    private double SearchRate;
    private double ManagerRate;
    private double SaleRate;
	public long getDeptSaleNum() {
		return deptSaleNum;
	}
	public void setDeptSaleNum(long deptSaleNum) {
		this.deptSaleNum = deptSaleNum;
	}
	public long getDeptSearchNum() {
		return deptSearchNum;
	}
	public void setDeptSearchNum(long deptSearchNum) {
		this.deptSearchNum = deptSearchNum;
	}
	public long getDeptManagerNum() {
		return deptManagerNum;
	}
	public void setDeptManagerNum(long deptManagerNum) {
		this.deptManagerNum = deptManagerNum;
	}
	public long getCurrentDeptNum() {
		return currentDeptNum;
	}
	public void setCurrentDeptNum(long currentDeptNum) {
		this.currentDeptNum = currentDeptNum;
	}
	public long getDeptSaleNumNormal() {
		return deptSaleNumNormal;
	}
	public void setDeptSaleNumNormal(long deptSaleNumNormal) {
		this.deptSaleNumNormal = deptSaleNumNormal;
	}
	public long getDeptManagerNumNormal() {
		return deptManagerNumNormal;
	}
	public void setDeptManagerNumNormal(long deptManagerNumNormal) {
		this.deptManagerNumNormal = deptManagerNumNormal;
	}
	public long getDeptSearchNumNormal() {
		return deptSearchNumNormal;
	}
	public void setDeptSearchNumNormal(long deptSearchNumNormal) {
		this.deptSearchNumNormal = deptSearchNumNormal;
	}
	public long getCurrentDeptNumNormal() {
		return currentDeptNumNormal;
	}
	public void setCurrentDeptNumNormal(long currentDeptNumNormal) {
		this.currentDeptNumNormal = currentDeptNumNormal;
	}
	public double getLeaveRate() {
		return leaveRate;
	}
	public void setLeaveRate(double leaveRate) {
		this.leaveRate = leaveRate;
	}
	public double getNeglectRate() {
		return neglectRate;
	}
	public void setNeglectRate(double neglectRate) {
		this.neglectRate = neglectRate;
	}
	public double getLateRate() {
		return lateRate;
	}
	public void setLateRate(double lateRate) {
		this.lateRate = lateRate;
	}
	public double getEarlyRate() {
		return earlyRate;
	}
	public void setEarlyRate(double earlyRate) {
		this.earlyRate = earlyRate;
	}
	public long getLeaveNum() {
		return leaveNum;
	}
	public void setLeaveNum(long leaveNum) {
		this.leaveNum = leaveNum;
	}
	public long getNeglectNum() {
		return neglectNum;
	}
	public void setNeglectNum(long neglectNum) {
		this.neglectNum = neglectNum;
	}
	public long getLateNum() {
		return lateNum;
	}
	public void setLateNum(long lateNum) {
		this.lateNum = lateNum;
	}
	public long getEarlyNum() {
		return earlyNum;
	}
	public void setEarlyNum(long earlyNum) {
		this.earlyNum = earlyNum;
	}
	public double getLeaveLastMonth() {
		return leaveLastMonth;
	}
	public void setLeaveLastMonth(double leaveLastMonth) {
		this.leaveLastMonth = leaveLastMonth;
	}
	public double getNeglectLastMonth() {
		return neglectLastMonth;
	}
	public void setNeglectLastMonth(double neglectLastMonth) {
		this.neglectLastMonth = neglectLastMonth;
	}
	public double getLateLastMonth() {
		return lateLastMonth;
	}
	public void setLateLastMonth(double lateLastMonth) {
		this.lateLastMonth = lateLastMonth;
	}
	public double getEarlyLastMonth() {
		return earlyLastMonth;
	}
	public void setEarlyLastMonth(double earlyLastMonth) {
		this.earlyLastMonth = earlyLastMonth;
	}
	public double getCurrentDeptRate() {
		return currentDeptRate;
	}
	public void setCurrentDeptRate(double currentDeptRate) {
		this.currentDeptRate = currentDeptRate;
	}
	public double getSearchRate() {
		return SearchRate;
	}
	public void setSearchRate(double searchRate) {
		SearchRate = searchRate;
	}
	public double getManagerRate() {
		return ManagerRate;
	}
	public void setManagerRate(double managerRate) {
		ManagerRate = managerRate;
	}
	public double getSaleRate() {
		return SaleRate;
	}
	public void setSaleRate(double saleRate) {
		SaleRate = saleRate;
	}
    
}
