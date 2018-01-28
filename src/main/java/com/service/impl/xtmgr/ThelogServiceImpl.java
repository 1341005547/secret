package com.service.impl.xtmgr;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ThelogMapper;
import com.entity.Thelog;
import com.service.xtmgr.ThelogService;

/**
 * 登陆日志业务类
 * @author 巴士里
 *
 */
@Service
public class ThelogServiceImpl implements ThelogService {

	@Autowired
	ThelogMapper mapper;
	
	
	
	public ThelogServiceImpl() {
	   System.out.println("-------init----");
	}

	@Override
	public int deleteByThelogPrimaryKey(Integer thelogId) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(thelogId);
	}

	@Override
	public int insert(Thelog record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	@Override
	public int addSelective(Thelog record) {
		// TODO Auto-generated method stub
		return mapper.insertSelective(record);
	}

	@Override
	public Thelog selectByPrimaryKey(Integer thelogId) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(thelogId);
	}

	@Override
	public int updateByPrimaryKeySelective(Thelog record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByThelogPrimaryKey(Thelog record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Thelog> selectLog() {
		// TODO Auto-generated method stub
		return mapper.selectLog();
	}

	@Override
	public int updateByKey(Thelog record) {
		// TODO Auto-generated method stub
		return mapper.updateByKey(record);
	}

	@Override
	public Thelog selectAllLog(Integer thelogId) {
		// TODO Auto-generated method stub
		return mapper.selectAllLog(thelogId);
	}

	@Override
	public int updatetime(Thelog record) {
		// TODO Auto-generated method stub
		return mapper.updatetime(record);
	}

}
