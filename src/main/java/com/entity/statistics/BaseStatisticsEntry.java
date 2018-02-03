package com.entity.statistics;

import java.util.Date;

/**
 * Created by Administrator on 2018/1/22.
 */
public class BaseStatisticsEntry {

    private String uname;
    private Integer id;//考勤记录id
    private Integer uid;//用户id
    private Date time;//考勤记录时间
    private Integer deptId;//部门id
    private String manualResult;//考勤记录情况
    private Integer monthQuality;//考勤当月统计结果
    //查询出来的出勤天数
    private Integer quantity;

    public Integer getMonthQuality() {
        return monthQuality;
    }

    public void setMonthQuality(Integer monthQuality) {
        this.monthQuality = monthQuality;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }



    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getManualResult() {
        return manualResult;
    }

    public void setManualResult(String manualResult) {
        this.manualResult = manualResult;
    }
}
