package com.service;

import java.util.List;

import com.entity.Staff;

/**
 * 员工列表
 * @author Administrator
 *
 */
public interface StaffService {
	/**显示员工信息列表*/
	public List<Staff> showStaffList();
	/**显示员工通讯录列表*/
	public List<Staff> showAddressList();
	
	
}
