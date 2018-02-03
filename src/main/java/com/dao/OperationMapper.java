package com.dao;

import java.util.List;

import com.entity.Operation;

public interface OperationMapper {
    int deleteByPrimaryKey(Integer operationId);

    int insert(Operation record);

    int insertSelective(Operation record);

    Operation selectByPrimaryKey(Integer operationId);

    int updateByPrimaryKeySelective(Operation record);

    int updateByPrimaryKey(Operation record);
    
    List<Operation> selectOperation();
}