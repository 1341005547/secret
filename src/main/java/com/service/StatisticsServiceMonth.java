package com.service;

import java.util.Date;

/**
 * Created by Administrator on 2018/1/20.
 */
public interface StatisticsServiceMonth {
    //获得部门总人数
    long getEmpNumber(Integer deptId);
    //获得早退，迟到，请假人数
    long getStatisticsEmpNumber(String time, Integer deptId,String statisticsResult);


}
