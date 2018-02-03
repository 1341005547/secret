package com.service;

import com.entity.Process;

/**
 * 流程
 * @author 霍云平
 *
 * 创建时间：2018年1月26日
 */
public interface ProcessService {
	/**
	 * 添加流程内容
	 * @param record
	 * @return
	 */
	int insertSelective(Process record);
	/**
	 * 总经理  修改
	 * @param record  流程对象
	 * @return
	 */
	int updateByPrimaryKeySelective(Process record);
}
