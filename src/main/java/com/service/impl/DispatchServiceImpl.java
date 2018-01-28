package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DispatchMapper;
import com.entity.Dispatch;
import com.service.DispatchService;

@Service
public class DispatchServiceImpl implements DispatchService {

	
	@Autowired
	private DispatchMapper dispatchmapper;
	
	@Override
	public int insertSelective(Dispatch record) {
		// TODO Auto-generated method stub
		return dispatchmapper.insertSelective(record);
	}

}
