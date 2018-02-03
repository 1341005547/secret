package com.entity.statistics;

import java.util.Date;

/**
 * Created by Administrator on 2018/1/21.
 */
public class StatisticsCondition {
    /**
     * 开始时间
     */
    private Date startTime;
    private Date endTime;
    private Integer deptId;
    private String manualResult;

    public String getManualResult() {
        return manualResult;
    }

    public void setManualResult(String manualResult) {
        this.manualResult = manualResult;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }
}
