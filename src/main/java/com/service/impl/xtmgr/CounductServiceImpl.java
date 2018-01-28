package com.service.impl.xtmgr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CounductMapper;
import com.entity.Counduct;
import com.service.xtmgr.CounductService;

@Service
public class CounductServiceImpl implements CounductService{

	@Autowired
	CounductMapper mapper;
	
	@Override
	public int deleteByCounductPrimaryKey(Integer counductId) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(counductId);
	}

	@Override
	public int insert(Counduct record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	@Override
	public int insertCounductSelective(Counduct record) {
		// TODO Auto-generated method stub
		return mapper.insertSelective(record);
	}

	@Override
	public Counduct selectByPrimaryKey(Integer counductId) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(counductId);
	}

	@Override
	public int updateByPrimaryKeySelective(Counduct record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByCounductPrimaryKey(Counduct record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Counduct> selectCounduct() {
		// TODO Auto-generated method stub
		return mapper.selectCounduct();
	}

}
