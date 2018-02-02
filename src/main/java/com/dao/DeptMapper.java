package com.dao;

import com.entity.Dept;

public interface DeptMapper {
    int deleteByPrimaryKey(Integer dId);

    int insert(Dept record);

    int insertSelective(Dept record);

    Dept selectByPrimaryKey(Integer dId);

    int updateByPrimaryKeySelective(Dept record);

    int updateByPrimaryKey(Dept record);
}