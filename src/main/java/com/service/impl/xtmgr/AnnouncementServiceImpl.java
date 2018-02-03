package com.service.impl.xtmgr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.AnnouncementMapper;
import com.entity.Announcement;
import com.service.xtmgr.AnnouncementService;

/**
 * 公告管理业务实现类
 * @author 巴士里
 *
 */

@Service
public class AnnouncementServiceImpl implements AnnouncementService {

	//自动注入AnnouncementMapper
	@Autowired
	AnnouncementMapper mapper;
	
	//根据主键删除公告
	@Override
	public int deleteByAnnouncementPrimaryKey(Integer announcementId) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(announcementId);
	}

	//插入公告(对象)SQL中不判断是否为空
	@Override
	public int insert(Announcement record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	//插入公告(对象)SQL中判断是否为空
	@Override
	public int insertAnnouncementSelective(Announcement record) {
		// TODO Auto-generated method stub
		return mapper.insertSelective(record);
	}

	//根据主键进行查询
	@Override
	public Announcement selectByPrimaryKey(Integer announcementId) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(announcementId);
	}

	//根据主键进行更新，SQL中会判断是否为空
	@Override
	public int updateByPrimaryKeySelective(Announcement record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(record);
	}
	
	//根据主键进行更新，SQL中不会判断是否为空
	@Override
	public int updateByAnnouncementPrimaryKey(Announcement record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}

	//查询所有的公告
	@Override
	public List<Announcement> selectAdver() {
		// TODO Auto-generated method stub
		return mapper.selectAdver();
	}


}
