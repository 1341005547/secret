package com.service;

import java.util.List;

import com.entity.Scheduleemployees;

/**
 * 日程管理
 * @author 胡筱林
 *
 */
public interface ScheduleemployeesService {
	
	/**
	 * 新建我的日程
	 * @return
	 */
	int addScheduleEmployees(Scheduleemployees record);
	
	/**
	 * 根据u_id查看我的日程
	 * @param u_id
	 * @return
	 */
	List showscheduleempl(Integer u_id);
	
	/**
	 * 根据u_id查看日历
	 * @param u_id
	 * @return
	 */
	List showcalendar(Integer u_id);
	
	/**
	 * 按主键删除个人日程
	 * @param s_id
	 * @return
	 */
	int deleteByPrimaryKey(Integer s_id);
	
	/**
	 * 根据s_id查找日程信息
	 * @param sId
	 * @return
	 */
	Scheduleemployees selectByPrimaryKey(Integer s_id);
	
	/**
	 * 修改日程信息
	 * @param record
	 * @return
	 */
	int updateByPrimaryKey(Scheduleemployees record);
}
