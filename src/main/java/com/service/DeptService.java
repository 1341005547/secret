package com.service;

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
}
