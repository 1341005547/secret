package com.dao;

import java.util.List;

import com.entity.MatterDept;



public interface MatterMapper {
	/**
	 * 部门详细信息
	 * @return
	 */
	List<MatterDept> selectMatters();
	/**
	 * 获得调任详情
	 * @param dispatchId
	 * @return
	 *//*
	PostDispatchDetail selectPostMsgDetail(Integer dispatchId);*/
}
