package com.service;

import java.util.List;

import com.entity.Apply;

/**
 * 申报业务层
 * @author Administrator
 *
 */
public interface MyApplyService {

	/**
	 * 通过id查看申报单
	 * @param aid
	 * @return
	 */
	Apply getApplyId(Integer aid);
	/**
	 * 查找所有申报表
	 * @return
	 */
	List<Apply> listGetASubmit();
	/**
	 * 动态添加
	 * @param record
	 * @return
	 */
	boolean insertSelective(Apply record);
	/**
	 * 更新所有
	 * @param record
	 * @return
	 */
	int updateByPrimaryKeySelective(Apply record);
	 /**
     * 把a_submit草稿箱状态改为已提交状态
     * @param record
     * @return
     */
	int updateSaveToSubmit(Integer record);
	/**
	 * 删除操作，删除草稿箱
	 * @param aId
	 * @return
	 */
	int deleteByPrimaryKey(Integer aId);
	/**
	 * 通过id查询申报表
	 * @param aId
	 * @return
	 */
	Apply selectByPrimaryKey(Integer aId);
	 /**
     * 获取申报表对象，用于取申报表内容
     * 编辑页面
     * 
     * @return
     */
    Apply getUName(Integer aId);
    
}
