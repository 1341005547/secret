package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Type_applyMapper;
import com.entity.Type_apply;
import com.service.Type_applyService;

@Service
public class Type_applyServiceImpl implements Type_applyService {

	@Autowired
	private Type_applyMapper type_applymapper;
	
	
	@Override
	public List<Type_apply> listAll() {
		// TODO Auto-generated method stub
		return type_applymapper.listAll();
	}

}
