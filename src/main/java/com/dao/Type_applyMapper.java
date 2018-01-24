package com.dao;

import java.util.List;

import com.entity.Type_apply;

public interface Type_applyMapper {
    int deleteByPrimaryKey(Integer tId);

    int insert(Type_apply record);

    int insertSelective(Type_apply record);

    Type_apply selectByPrimaryKey(Integer tId);

    int updateByPrimaryKeySelective(Type_apply record);

    int updateByPrimaryKey(Type_apply record);
    /**
     * 查询所有
     * @return
     */
    List<Type_apply> listAll();
}