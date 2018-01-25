package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DeptMapper;
import com.entity.Dept;
import com.service.DeptService;

@Service
public class DeptServiceImpl implements DeptService {

	@Autowired
	private DeptMapper deptmapper;
	
	@Override
	public Dept getDeptPrimaryKey(Integer uId) {
		// TODO Auto-generated method stub
		return deptmapper.getDeptPrimaryKey(uId);
	}

	@Override
	public List<Dept> getAllDept() {
		// TODO Auto-generated method stub
		return deptmapper.getAllDept();
	}

}
