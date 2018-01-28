package com.service;

import java.util.List;

import com.entity.Dept;

/**
 * 部门表
 * @author Administrator
 *
 */
public interface DeptService {

	/**
	 * 通过部门id 获取部门
	 */
	public Dept getDeptById(Integer did);
	/**
	 * 通过用户uid获取部门
	 */
	Dept getDeptPrimaryKey(Integer uId);
	/**
	 * 查询所有部门
	 */
	List<Dept> getAllDept();
}
