package com.service.xtmgr;

import java.util.List;

import com.entity.Operation;

public interface OperationService {
	int deleteByOperationPrimaryKey(Integer operationId);

    int insert(Operation record);

    int addSelective(Operation record);

    Operation selectByPrimaryKey(Integer operationId);

    int updateByPrimaryKeySelective(Operation record);

    int updateByOperationPrimaryKey(Operation record);
    
    List<Operation> selectOperation();
}
