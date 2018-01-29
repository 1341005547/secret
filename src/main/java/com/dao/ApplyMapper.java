package com.dao;

import java.util.List;

import com.entity.Apply;

public interface ApplyMapper {
    int deleteByPrimaryKey(Integer aId);

    int insert(Apply record);

    int insertSelective(Apply record);

    Apply selectByPrimaryKey(Integer aId);

    int updateByPrimaryKeySelective(Apply record);

    int updateByPrimaryKey(Apply record);
    
    /**
     * 获取已经提交的申请集合（ a_submit=1）
     */
    List<Apply> selectAllApplyBySubmit();
    /**
     * 根据部门id查询这个部门的申请
     * @param dId	部门id
     * @return	返回这个部门的申请集合
     */
   List<Apply> selectAllApplyBydId(Integer dId);
   /**
    * 总经理查看部门经理的申请 和其他申请
    * @return 需要总经理处理的申请
    */
   List<Apply> selectApplyGMDeal();
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
    * 需要总经理审批的员工的申请
    * @return
    */
   List<Apply> selectNeetGMDeal();
   
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