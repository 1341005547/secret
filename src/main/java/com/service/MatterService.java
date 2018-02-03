package com.service;

import java.util.List;

import com.entity.Dept;
import com.entity.MatterDept;
import com.entity.Role;
import com.entity.User;

/**
 * 部门层业务
 * @author Administrator
 *
 */
public interface MatterService {
    /**
     * 获得部门信息
     * @param Rid
     * @return
     */
	List<MatterDept> getDeptMsg();
	/**
	 * 增添部门
	 */
	void insertDept(Dept dept);
	/**
	 * 删除部门
	 */
	void delDept(Integer deptId);
	/**
	 * 给部门添加部门经理
	 */
	void addDeptManager(User user);
	/**
	 * 获得所有的部门
	 */
	List<Dept> getAllDept();

}
