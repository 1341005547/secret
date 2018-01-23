package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Result_applyMapper;
import com.entity.Result_apply;
import com.service.Result_applyService;
@Service
public class Result_applyServiceImpl implements Result_applyService{
	@Autowired
	private Result_applyMapper result_applyMapper;
	
	@Override
	public int insert(Result_apply record) {
		// TODO Auto-generated method stub
		return result_applyMapper.insert(record);
	}

}
