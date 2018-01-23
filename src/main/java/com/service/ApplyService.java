package com.service;

import java.util.List;

import com.entity.Apply;
import com.entity.Category_dispatch;
import com.entity.Type_apply;


/**
 * 
 * @author 霍云平
 *
 */
public interface ApplyService {
	/**
	 * 申请类型
	 * @return
	 */
	List<Type_apply> getAllApplyType();
	/**
	 * 报销单 项目类别
	 * @return
	 */
	List<Category_dispatch> getAllCategotyDispatch();
	
	/**
	 * 获取已经提交申请的申请集合
	 */
	List<Apply> selectAllApplyBySubmit();
	
	
	/**
     * 根据部门id查询这个部门的申请
     * @param dId	部门id
     * @return	返回这个部门的申请集合
     */
   List<Apply> selectAllApplyBydId(Integer dId);
   /**
    * 修改
    * @param record
    * @return
    */
   int updateByPrimaryKeySelective(Apply record);
	
}
