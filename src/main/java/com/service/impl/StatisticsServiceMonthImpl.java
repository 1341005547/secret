package com.service.impl;

import com.dao.BaseStatistics;
import com.entity.statistics.StatisticsCondition;
import com.service.StatisticsServiceMonth;
import com.test.DateUtil;
import com.util.NumberFormatUtil;
import com.util.StatisticsUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;


/**
 * Created by Administrator on 2018/1/20.
 */
@Service
public class StatisticsServiceMonthImpl implements StatisticsServiceMonth {
   @Autowired
   private BaseStatistics baseStatistics;
    @Override
    public long getEmpNumber(Integer deptId){
        StatisticsCondition statisticsCondition = new StatisticsCondition();
        statisticsCondition.setDeptId(deptId);
        return baseStatistics.selectCount(statisticsCondition);
    }

    @Override
    public long getStatisticsEmpNumber(String time, Integer deptId, String statisticsResult) {
        StatisticsCondition statisticsCondition = new StatisticsCondition();
        Date[] dates = NumberFormatUtil.getTimeRange(time);
        statisticsCondition.setDeptId(deptId);
        statisticsCondition.setEndTime(dates[1]);
        statisticsCondition.setStartTime(dates[0]);
        statisticsCondition.setManualResult(statisticsResult);
        return baseStatistics.selectStatistics(statisticsCondition);
    }
}
