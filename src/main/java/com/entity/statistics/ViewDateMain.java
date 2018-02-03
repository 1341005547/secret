package com.entity.statistics;

/**
 * Created by Administrator on 2018/1/22.
 */
public class ViewDateMain {
    /**
     * 部门总数
     */
    private long dept1Num;//部门总数
    private long dept2Num;//部门总数
    private long dept3Num;//部门总数
    private long dept1NumNormal;//部门正常考勤总数
    private long dept2NumNormal;//部门正常考勤总数
    private long dept3NumNormal;//部门正常考勤总数

    private double leaveRate;//部门请假率
    private double neglectRate;//部门旷工率
    private double lateRate;//部门迟到率
    private double earlyRate;//部门早退率

    private long leaveNum;//部门请假总数
    private long neglectNum;//部门旷工总数
    private long lateNum;//部门迟到总数
    private long earlyNum;//部门早退总数

    private double leaveRateChange;//部门变化请假率
    private double neglectRateChange;//部门变化旷工率
    private double lateRateChange;//部门变化迟到率
    private double earlyRateChange;//部门变化早退率

    public long getDept1Num() {
        return dept1Num;
    }

    public void setDept1Num(long dept1Num) {
        this.dept1Num = dept1Num;
    }

    public long getDept2Num() {
        return dept2Num;
    }

    public void setDept2Num(long dept2Num) {
        this.dept2Num = dept2Num;
    }

    public long getDept3Num() {
        return dept3Num;
    }

    public void setDept3Num(long dept3Num) {
        this.dept3Num = dept3Num;
    }

    public long getDept1NumNormal() {
        return dept1NumNormal;
    }

    public void setDept1NumNormal(long dept1NumNormal) {
        this.dept1NumNormal = dept1NumNormal;
    }

    public long getDept2NumNormal() {
        return dept2NumNormal;
    }

    public void setDept2NumNormal(long dept2NumNormal) {
        this.dept2NumNormal = dept2NumNormal;
    }

    public long getDept3NumNormal() {
        return dept3NumNormal;
    }

    public void setDept3NumNormal(long dept3NumNormal) {
        this.dept3NumNormal = dept3NumNormal;
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

    public double getLeaveRateChange() {
        return leaveRateChange;
    }

    public void setLeaveRateChange(double leaveRateChange) {
        this.leaveRateChange = leaveRateChange;
    }

    public double getNeglectRateChange() {
        return neglectRateChange;
    }

    public void setNeglectRateChange(double neglectRateChange) {
        this.neglectRateChange = neglectRateChange;
    }

    public double getLateRateChange() {
        return lateRateChange;
    }

    public void setLateRateChange(double lateRateChange) {
        this.lateRateChange = lateRateChange;
    }

    public double getEarlyRateChange() {
        return earlyRateChange;
    }

    public void setEarlyRateChange(double earlyRateChange) {
        this.earlyRateChange = earlyRateChange;
    }
}
