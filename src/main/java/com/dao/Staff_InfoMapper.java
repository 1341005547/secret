package com.dao;

import com.entity.Staff_Info;

/**
 * 员工信息详情
 * @author Administrator
 *
 */
public interface Staff_InfoMapper {
	/**根据Id获得员工信息表详情*/
	public Staff_Info selectStaff_InfoById(Integer uid);
}
