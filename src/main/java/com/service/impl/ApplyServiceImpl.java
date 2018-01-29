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

	@Override
	public List<Apply> selectApplyGMDeal() {
		// TODO Auto-generated method stub
		return applyMapper.selectApplyGMDeal();
	}

	@Override
	public int insertSelective(Apply record) {
		// TODO Auto-generated method stub
		return applyMapper.insertSelective(record);
	}

	@Override
	public Apply showMaxApplyId() {
		// TODO Auto-generated method stub
		return applyMapper.showMaxApplyId();
	}

	@Override
	public List<Apply> selectAccountDispathByUId(Integer uId) {
		// TODO Auto-generated method stub
		return applyMapper.selectAccountDispathByUId(uId);
	}

	@Override
	public List<Apply> selectNeetGMDeal() {
		// TODO Auto-generated method stub
		return applyMapper.selectNeetGMDeal();
	}

	@Override
	public List<Apply> selectAlldispatchBytId(Integer tId ) {
		// TODO Auto-generated method stub
		return applyMapper.selectAlldispatchBytId(tId);
	}

	@Override
	public List<Apply> selectNeetGMdispatchDeal() {
		// TODO Auto-generated method stub
		return applyMapper.selectNeetGMdispatchDeal();
	}



}
