package com.service.impl;

import com.dao.BaseStatistics;
import com.entity.statistics.BaseStatisticsEntry;
import com.entity.statistics.StatisticsCondition;
import com.service.StatisticsExcelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/1/22.
 */
@Service
public class StatisticsExcelServiceImpl implements StatisticsExcelService{
    @Autowired
    private BaseStatistics baseStatistics;

    @Override
    public List<BaseStatisticsEntry> selectData(StatisticsCondition statisticsCondition) {
        return baseStatistics.selectExcelData(statisticsCondition);
    }

}
