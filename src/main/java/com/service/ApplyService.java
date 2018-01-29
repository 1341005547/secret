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
   
   /**
    * 总经理查看部门经理的申请 和其他申请
    * @return 需要总经理处理的申请
    */
   List<Apply> selectApplyGMDeal();
   
   /**
    * 需要总经理审批的员工的申请
    * @return
    */
   List<Apply> selectNeetGMDeal();
   
   int insertSelective(Apply record);
   /**
    * 获取最大的申请id
    * @return 最大的申请id
    */
   Apply showMaxApplyId();
   
   /**
    *	根据用户iD 查询报销单申请
    * @return 
    */
   List<Apply> selectAccountDispathByUId(Integer uId);
   
   /**
    * 部门经理查看本部门的调度申请
    * @return
    */
   List<Apply> selectAlldispatchBytId(Integer tId);
   
   /**
    * 需要总经理审批员工的调度申请
    * @return
    */
   List<Apply> selectNeetGMdispatchDeal();
   
   
	
}
