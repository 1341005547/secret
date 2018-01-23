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
}