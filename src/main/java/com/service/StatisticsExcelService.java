package com.service;

import com.dao.BaseStatistics;
import com.entity.statistics.BaseStatisticsEntry;
import com.entity.statistics.StatisticsCondition;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2018/1/20.
 */
public interface StatisticsExcelService {
    //获得excel数据
    List<BaseStatisticsEntry> selectData(StatisticsCondition statisticsCondition);


}
