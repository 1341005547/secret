package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ScheduleemployeesMapper;
import com.entity.Scheduleemployees;
import com.service.ScheduleemployeesService;

/**
 * 日程管理业务实现类
 * @author 胡筱林
 *
 */
@Service
public class ScheduleemployeesServiceImpl implements ScheduleemployeesService {

	@Autowired
	private ScheduleemployeesMapper scheduleEmplMapper;
	
	/**
	 * 新建我的日程
	 */
	@Override
	public int addScheduleEmployees(Scheduleemployees record) {
		// TODO Auto-generated method stub
		return scheduleEmplMapper.insert(record);
	}

	/**
	 * 根据u_id查看我的日程
	 */
	@Override
	public List showscheduleempl(Integer u_id) {
		// TODO Auto-generated method stub
		return scheduleEmplMapper.selectByUid(u_id);
	}

	/**
	 * 根据u_id查看日历
	 */
	@Override
	public List showcalendar(Integer u_id) {
		// TODO Auto-generated method stub
		return scheduleEmplMapper.selectByCalendarKey(u_id);
	}
	
	/**
	 * 根据u_id获取当天日程
	 */
	@Override
	public List getTodayScheduleempl(Integer u_id) {
		// TODO Auto-generated method stub
		return scheduleEmplMapper.getTodayScheduleempl(u_id);
	}

	/**
	 * 按主键删除个人日程
	 */
	@Override
	public int deleteByPrimaryKey(Integer s_id) {
		// TODO Auto-generated method stub
		return scheduleEmplMapper.deleteByPrimaryKey(s_id);
	}

	/**
	 * 根据s_id获取日程信息
	 */
	@Override
	public Scheduleemployees selectByPrimaryKey(Integer s_id) {
		// TODO Auto-generated method stub
		return scheduleEmplMapper.selectByPrimaryKey(s_id);
	}

	/**
	 * 修改日程信息
	 */
	@Override
	public int updateByPrimaryKey(Scheduleemployees record) {
		// TODO Auto-generated method stub
		return scheduleEmplMapper.updateByPrimaryKey(record);
	}

}
