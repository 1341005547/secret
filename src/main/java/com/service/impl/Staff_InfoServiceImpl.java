package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Staff_InfoMapper;
import com.entity.Staff_Info;
import com.service.Staff_InfoService;
@Service
public class Staff_InfoServiceImpl implements Staff_InfoService {
	@Autowired
	private Staff_InfoMapper mapper;

	@Override
	public Staff_Info getStaff_InfoById(Integer uid) {
		// TODO Auto-generated method stub
		return mapper.selectStaff_InfoById(uid);
	}

}