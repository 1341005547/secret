package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.StaffMapper;
import com.entity.Staff;
import com.service.StaffService;
@Service
public class StaffServiceImpl implements StaffService {
	
	@Autowired
	private StaffMapper mapper;
	
	@Override
	public List<Staff> showStaffList() {
		// TODO Auto-generated method stub
		return mapper.SelectStaff();
	}

	@Override
	public List<Staff> showAddressList() {
		// TODO Auto-generated method stub
		return mapper.SelectAddress();
	}

	
}
