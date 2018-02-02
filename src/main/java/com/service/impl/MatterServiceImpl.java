package com.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DeptMapper;
import com.dao.MatterMapper;
import com.dao.UserMapper;
import com.entity.Dept;
import com.entity.MatterDept;
import com.entity.User;
import com.service.MatterService;
@Service
public class MatterServiceImpl implements MatterService {
	
	@Autowired
	private MatterMapper matterMapper;
	@Autowired
	private DeptMapper deptMapper;
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<MatterDept> getDeptMsg() {
		// TODO Auto-generated method stub
		return matterMapper.selectMatters();
	}


	@Override
	public void insertDept(Dept dept) {
		// TODO Auto-generated method stub
		deptMapper.insert(dept);
	}


	@Override
	public void delDept(Integer deptId) {
		// TODO Auto-generated method stub
		deptMapper.deleteByPrimaryKey(deptId);
		
	}


	@Override
	public void addDeptManager(User user) {
		userMapper.updateByPrimaryKeySelective(user);
		
		
		
	}
	/**
	 * 部门信息
	 */
	@Override
	public List<Dept> getAllDept() {
		// TODO Auto-generated method stub
		return deptMapper.selectList();
	}

}
