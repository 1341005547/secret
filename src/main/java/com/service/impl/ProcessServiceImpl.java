package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProcessMapper;
import com.entity.Process;
import com.service.ProcessService;
@Service
public class ProcessServiceImpl implements ProcessService{
	@Autowired
	private ProcessMapper processMapper;

	@Override
	public int insertSelective(Process record) {
		// TODO Auto-generated method stub
		return processMapper.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(Process record) {
		// TODO Auto-generated method stub
		return processMapper.updateByPrimaryKeySelective(record);
	}

}
