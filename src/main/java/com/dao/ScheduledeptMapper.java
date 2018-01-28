package com.dao;

import java.util.List;

import com.entity.Scheduledept;

public interface ScheduledeptMapper {
    int deleteByPrimaryKey(Integer scheduledeptId);

    int insert(Scheduledept record);

    int insertSelective(Scheduledept record);

    Scheduledept selectByPrimaryKey(Integer scheduledeptId);

    List selectByDid(Integer d_id);
    
    List selectByCalendarKey(Integer d_id);

    int updateByPrimaryKeySelective(Scheduledept record);

    int updateByPrimaryKey(Scheduledept record);
}