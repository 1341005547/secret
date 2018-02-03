package com.entity.statistics;

import java.util.Date;

/**
 * Created by Administrator on 2018/1/20.
 */
public class Base_Statistics {
    Integer id;//数据id
    Integer uId;//用户id
    Date time;//所统计的时间
    Integer deptId;//用户所在的部门
    String manualResult;//考勤结果

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }


    public String getManualResult() {
        return manualResult;
    }

    public void setManualResult(String manualResult) {
        this.manualResult = manualResult;
    }
}
