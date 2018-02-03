package com.service;

import java.util.List;

import com.entity.Scheduledept;

/**
 * 部门日程管理
 * @author 胡筱林
 *
 */
public interface ScheduledeptService {
	
	/**
	 * 新建部门日程
	 * @return
	 */
	int addScheduleDept(Scheduledept record);
	
	/**
	 * 根据d_id查看部门日程
	 * @param d_id
	 * @return
	 */
	List showscheduledept(Integer d_id);
	
	/**
	 * 根据d_id查看日历
	 * @param d_id
	 * @return
	 */
	List showdeptcalendar(Integer d_id);
	
	/**
<<<<<<< HEAD
	 * 根据u_id获取当天日程
	 * @param u_id
	 * @return
	 */
    List getTodayScheduledept(Integer d_id);
	
	/**
=======
>>>>>>> branch 'master' of https://github.com/1341005547/secret.git
	 * 按主键删除部门日程
	 * @param scheduledeptId
	 * @return
	 */
	int deleteByPrimaryKey(Integer scheduledeptId);
	
	/**
	 * 根据scheduledeptId查找部门日程信息
	 * @param scheduledeptId
	 * @return
	 */
	Scheduledept selectByPrimaryKey(Integer scheduledeptId);
	
	/**
	 * 修改部门日程信息
	 * @param record
	 * @return
	 */
	int updateByPrimaryKey(Scheduledept record);
}
