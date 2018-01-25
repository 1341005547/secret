package com.service;

import java.util.List;

import com.entity.Dept;

public interface DeptService {

	Dept getDeptPrimaryKey(Integer uId);
	/**
	 * 查询所有部门
	 */
	List<Dept> getAllDept();
}
