package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ApplyMapper;
import com.dao.Category_dispatchMapper;
import com.dao.Type_applyMapper;

import com.entity.Apply;
import com.entity.Category_dispatch;
import com.entity.Type_apply;

import com.service.ApplyService;

@Service
public class ApplyServiceImpl implements ApplyService{
	
	@Autowired
	private Type_applyMapper type_applyMapper;
	@Autowired
	private Category_dispatchMapper category_dispatchMapper;
	@Autowired
	private ApplyMapper applyMapper;
	

	@Override
	public List<Type_apply> getAllApplyType() {
		
		return type_applyMapper.getAllApplyType();
	}

	@Override
	public List<Category_dispatch> getAllCategotyDispatch() {
		
		return category_dispatchMapper.getAllCategotyDispatch();
	}

	@Override
	public List<Apply> selectAllApplyBySubmit() {
		
		return applyMapper.selectAllApplyBySubmit();
	}

	@Override
	public List<Apply> selectAllApplyBydId(Integer dId) {
		// TODO Auto-generated method stub
		return applyMapper.selectAllApplyBydId(dId);
	}

	@Override
	public int updateByPrimaryKeySelective(Apply record) {
		// TODO Auto-generated method stub
		return applyMapper.updateByPrimaryKeySelective(record);
	}



}
