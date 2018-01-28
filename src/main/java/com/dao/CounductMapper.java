package com.dao;

import java.util.List;

import com.entity.Counduct;

public interface CounductMapper {
    int deleteByPrimaryKey(Integer counductId);

    int insert(Counduct record);

    int insertSelective(Counduct record);

    Counduct selectByPrimaryKey(Integer counductId);

    int updateByPrimaryKeySelective(Counduct record);

    int updateByPrimaryKey(Counduct record);
    
    List<Counduct> selectCounduct();
}