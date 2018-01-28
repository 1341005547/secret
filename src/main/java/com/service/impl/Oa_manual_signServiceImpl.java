package com.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Oa_manual_signMapper;
import com.entity.statistics.BaseStatisticsEntry;
import com.entity.Oa_manual_sign;

import com.service.Oa_manual_signService;

@Service
public class Oa_manual_signServiceImpl implements Oa_manual_signService {
//自动装载考勤记录的dao接口
@Autowired
private Oa_manual_signMapper manual_sign;

	@Override
	public int insert(Oa_manual_sign record) {
		// TODO Auto-generated method stub
		return manual_sign.insert(record);
	}

	@Override
	public Oa_manual_sign selectByPrimaryKey(Integer omsId) {
		// TODO Auto-generated method stub
		return manual_sign.selectByPrimaryKey(omsId);
	}

	@Override
	public List listAllManual(String year,int u_id) {
		// TODO Auto-generated method stub
		return manual_sign.listAllManual(year,u_id);
	}

	@Override
	public List getMonthQuality(String month) {
		// TODO Auto-generated method stub
		return manual_sign.getMonthQuality(month);
	}

	@Override
	public Oa_manual_sign getMonthByPerson(String month, int uId) {
		// TODO Auto-generated method stub
		return manual_sign.getMonthByPerson(month, uId);
	}

	@Override
	public BaseStatisticsEntry getMonthByPersonManual(String month, int uId, String result) {
		// TODO Auto-generated method stub
		return manual_sign.getMonthByPersonManual(month, uId, result);
	}

	@Override
	public int deleteByPrimaryKey(Integer omsId) {
		// TODO Auto-generated method stub
		return manual_sign.deleteByPrimaryKey(omsId);
	}

	@Override
	public int insertSelective(Oa_manual_sign record) {
		// TODO Auto-generated method stub
		return manual_sign.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(Oa_manual_sign record) {
		// TODO Auto-generated method stub
		return manual_sign.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Oa_manual_sign record) {
		// TODO Auto-generated method stub
		return manual_sign.updateByPrimaryKey(record);
	}

	@Override
	public String selectStartTime(int uId, String month) {
		// TODO Auto-generated method stub
		return manual_sign.selectStartTime(uId, month);
	}

	@Override
	public Oa_manual_sign selectEndTime(int uId, String month) {
		// TODO Auto-generated method stub
		return manual_sign.selectEndTime(uId, month);
	}

	@Override
	public int insertBase(BaseStatisticsEntry base) {
		// TODO Auto-generated method stub
		return manual_sign.insertBase(base);
	}



}
