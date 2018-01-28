package com.dao;

import java.util.List;

import com.entity.Scheduleemployees;

public interface ScheduleemployeesMapper {
    int deleteByPrimaryKey(Integer s_id);

    int insert(Scheduleemployees record);

    int insertSelective(Scheduleemployees record);

    Scheduleemployees selectByPrimaryKey(Integer s_id);
    
    List selectByUid(Integer u_id);
    
    List selectByCalendarKey(Integer u_id);

    int updateByPrimaryKeySelective(Scheduleemployees record);

    int updateByPrimaryKey(Scheduleemployees record);
}