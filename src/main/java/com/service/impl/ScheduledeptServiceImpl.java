package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ScheduledeptMapper;
import com.dao.ScheduleemployeesMapper;
import com.entity.Scheduledept;
import com.entity.Scheduleemployees;
import com.service.ScheduledeptService;
import com.service.ScheduleemployeesService;

/**
 * 部门日程管理业务实现类
 * @author 胡筱林
 *
 */
@Service
public class ScheduledeptServiceImpl implements ScheduledeptService {

	@Autowired
	private ScheduledeptMapper scheduleDeptMapper;

	/**
	 * 新建部门日程
	 */
	@Override
	public int addScheduleDept(Scheduledept record) {
		// TODO Auto-generated method stub
		return scheduleDeptMapper.insert(record);
	}

	/**
	 * 根据d_id查看部门日程
	 */
	@Override
	public List showscheduledept(Integer d_id) {
		// TODO Auto-generated method stub
		return scheduleDeptMapper.selectByDid(d_id);
	}

	/**
	 * 根据d_id查看日历
	 */
	@Override
	public List showdeptcalendar(Integer d_id) {
		// TODO Auto-generated method stub
		return scheduleDeptMapper.selectByCalendarKey(d_id);
	}

	/**
<<<<<<< HEAD
	 * 根据u_id获取当天日程
	 */
	@Override
	public List getTodayScheduledept(Integer d_id) {
		// TODO Auto-generated method stub
		return scheduleDeptMapper.getTodayScheduledept(d_id);
	}
	
	/**
=======
>>>>>>> branch 'master' of https://github.com/1341005547/secret.git
	 * 按主键删除部门日程
	 */
	@Override
	public int deleteByPrimaryKey(Integer scheduledeptId) {
		// TODO Auto-generated method stub
		return scheduleDeptMapper.deleteByPrimaryKey(scheduledeptId);
	}

	/**
	 * 根据scheduledeptId查找部门日程信息
	 */
	@Override
	public Scheduledept selectByPrimaryKey(Integer scheduledeptId) {
		// TODO Auto-generated method stub
		return scheduleDeptMapper.selectByPrimaryKey(scheduledeptId);
	}

	/**
	 * 修改部门日程信息
	 */
	@Override
	public int updateByPrimaryKey(Scheduledept record) {
		// TODO Auto-generated method stub
		return scheduleDeptMapper.updateByPrimaryKey(record);
	}
	


}
