package com.dao;

import java.util.List;

import com.entity.Dept;

public interface DeptMapper {

	/**
	 * 通过用户id查找部门
	 * @param uId
	 * @return
	 */
	Dept getDeptPrimaryKey(Integer uId);
	/**
	 * 查询所有部门
	 */
	List<Dept> getAllDept();
}
