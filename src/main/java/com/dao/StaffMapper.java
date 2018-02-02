package com.dao;

import java.util.List;

import com.entity.Staff;

/**
 * 员工信息表的dao层
 * @author Administrator
 *
 */
public interface StaffMapper {
	/**查询员工列表信息*/
	public List<Staff> SelectStaff();
	/**查询通讯录列表*/
	public List<Staff> SelectAddress();
}
