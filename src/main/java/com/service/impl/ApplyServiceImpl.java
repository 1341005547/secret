package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Type_applyMapper;
import com.entity.Type_apply;
import com.service.ApplyService;

@Service
public class ApplyServiceImpl implements ApplyService{
	
	@Autowired
	private Type_applyMapper type_applyMapper;

	@Override
	public List<Type_apply> getAllApplyType() {
		
		return type_applyMapper.getAllApplyType();
	}

}
