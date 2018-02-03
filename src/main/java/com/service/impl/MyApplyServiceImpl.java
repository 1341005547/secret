package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ApplyMapper;
import com.entity.Apply;
import com.service.MyApplyService;

@Service
public class MyApplyServiceImpl implements MyApplyService {

	@Autowired
	private ApplyMapper applymapper;
	
	@Override
	public Apply getApplyId(Integer aid) {
		// TODO Auto-generated method stub
		return applymapper.selectByPrimaryKey(aid);
	}

	@Override
	public List<Apply> listGetASubmit(Integer aId) {
		// TODO Auto-generated method stub
		return applymapper.listGetASubmit(aId);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
	public boolean insertSelective(Apply record) {
		// TODO Auto-generated method stub
		boolean flag=false;
		if(applymapper.insertSelective(record)>0){
			flag=true;
		}
		return flag;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
	public int updateByPrimaryKeySelective(Apply record) {
		// TODO Auto-generated method stub
		
		
		return applymapper.updateByPrimaryKeySelective(record);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
	public int updateSaveToSubmit(Integer record) {
		// TODO Auto-generated method stub
		
		return applymapper.updateSaveToSubmit(record);
	}

	@Override
	public int deleteByPrimaryKey(Integer aId) {
		// TODO Auto-generated method stub
		return applymapper.deleteByPrimaryKey(aId);
	}

	@Override
	public Apply selectByPrimaryKey(Integer aId) {
		// TODO Auto-generated method stub
		return applymapper.selectByPrimaryKey(aId);
	}

	@Override
	public Apply getUName(Integer aId) {
		// TODO Auto-generated method stub
		return applymapper.getUName(aId);
	}

	@Override
	public int showMaxApplyId() {
		// TODO Auto-generated method stub
		return applymapper.showMaxApplyId();
	}

	

	

	
	

}
