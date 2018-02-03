package com.dao;

import java.util.Date;
import java.util.List;

import com.entity.Thelog;

public interface ThelogMapper {
    int deleteByPrimaryKey(Integer thelogId);

    int insert(Thelog record);

    int insertSelective(Thelog record);

    Thelog selectByPrimaryKey(Integer thelogId);
    
    Thelog selectAllLog(Integer thelogId);

    int updateByPrimaryKeySelective(Thelog record);

    int updateByPrimaryKey(Thelog record);
    
    int updatetime(Thelog record);
    
    List<Thelog> selectLog();
    
    int updateByKey(Thelog record);
}