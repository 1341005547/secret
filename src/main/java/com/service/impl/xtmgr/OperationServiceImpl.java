package com.service.impl.xtmgr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.OperationMapper;
import com.entity.Operation;
import com.service.xtmgr.OperationService;

@Service
public class OperationServiceImpl implements OperationService {

	@Autowired
	OperationMapper mapper;
	
	@Override
	public int deleteByOperationPrimaryKey(Integer operationId) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(operationId);
	}

	@Override
	public int insert(Operation record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	@Override
	public int addSelective(Operation record) {
		// TODO Auto-generated method stub
		return mapper.insertSelective(record);
	}

	@Override
	public Operation selectByPrimaryKey(Integer operationId) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(operationId);
	}

	@Override
	public int updateByPrimaryKeySelective(Operation record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByOperationPrimaryKey(Operation record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Operation> selectOperation() {
		// TODO Auto-generated method stub
		return mapper.selectOperation();
	}

}
