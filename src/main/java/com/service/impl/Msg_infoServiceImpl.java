package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Msg_infoMapper;
import com.entity.Msg_info;
import com.service.Msg_infoService;

@Service
public class Msg_infoServiceImpl implements Msg_infoService {
    @Autowired
	private Msg_infoMapper msgMapper;//获取邮箱dao接口
	
	@Override
	public List<Msg_info> getMsg_infoByUid(Integer uid) {
		// TODO Auto-generated method stub
		return msgMapper.getMsg_infoByUid(uid);
	}

	@Override
	public int updateMsg_infoByMsgid(Msg_info record) {
		// TODO Auto-generated method stub
		return msgMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int insertByMsgInfo(Msg_info record) {
		// TODO Auto-generated method stub
		return msgMapper.insertSelective(record);
	}

}
