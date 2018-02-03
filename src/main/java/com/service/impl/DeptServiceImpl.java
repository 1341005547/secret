package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DeptMapper;
import com.entity.Dept;
import com.service.DeptService;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DeptMapper;
import com.entity.Dept;
import com.service.DeptService;
@Service
public class DeptServiceImpl implements DeptService {
     
	@Autowired
	private DeptMapper deptMapper;//类型匹配部门接口
	
	/**
	 * 通过did查询部门
	 */
	@Override
	public Dept getDeptById(Integer did) {
		// TODO Auto-generated method stub
		return deptMapper.selectByPrimaryKey(did);
	}

	@Override
	public Dept getDeptPrimaryKey(Integer uId) {
		// TODO Auto-generated method stub
		return deptMapper.getDeptPrimaryKey(uId);
	}

	@Override
	public List<Dept> getAllDept() {
		// TODO Auto-generated method stub
		return deptMapper.getAllDept();
	}

}
