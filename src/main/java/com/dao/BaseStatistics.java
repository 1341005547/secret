package com.dao;

import com.entity.statistics.BaseStatisticsEntry;
import com.entity.statistics.DealLeave;
import com.entity.statistics.StatisticsCondition;

import java.util.List;

/**
 * Created by Administrator on 2018/1/20.
 */
public interface BaseStatistics {
    /**
     * 获得早退，迟到，请假用户
     */
    long selectStatistics(StatisticsCondition statisticsCondition);
    /**
     * 获得总人数
     */
    long selectCount(StatisticsCondition statisticsCondition);
    /**
     * 获得excel应导出的数据
     */
    List<BaseStatisticsEntry> selectExcelData(StatisticsCondition statisticsCondition);
    DealLeave getApplyMsg(Integer applyId);
    void insert(BaseStatisticsEntry baseStatisticsEntry);

}
