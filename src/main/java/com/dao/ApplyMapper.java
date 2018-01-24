package com.dao;

import java.util.List;

import com.entity.Apply;

public interface ApplyMapper {
    int deleteByPrimaryKey(Integer aId);

    int insert(Apply record);

    int insertSelective(Apply record);

    Apply selectByPrimaryKey(Integer aId);

    int updateByPrimaryKeySelective(Apply record);

    
    /**
     * 获取申报表集合，a_submit为0草稿箱内容，1为已提交待审核申报表
     * 
     * @return
     */
    List<Apply> listGetASubmit();
    
    /**
     * 把a_submit草稿箱状态改为已提交状态
     * @param record
     * @return
     */
    int updateSaveToSubmit(Integer aId);
    /**
     * 获取申报表对象，用于取申报表内容
     * 编辑页面
     * 
     * @return
     */
    Apply getUName(Integer aId);
   
    
}