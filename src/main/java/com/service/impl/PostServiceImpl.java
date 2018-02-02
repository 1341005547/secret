package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DispatchMapper;
import com.dao.PostMapper;
import com.entity.matters.PostDispatch;
import com.entity.matters.PostDispatchDetail;
import com.service.matters.PostService;
@Service
public class PostServiceImpl implements PostService {
	@Autowired
	private PostMapper postMapper;
	@Autowired
	private DispatchMapper dispatchMapper;
	@Override
	public List<PostDispatch> selectStaffMsg() {
		
		return postMapper.selectPostMsg();
	}
	@Override
	public PostDispatchDetail selectStaffDetail(Integer id) {
		// TODO Auto-generated method stub
		return postMapper.selectPostMsgDetail(id);
	}
	/**
	 * 删除调动信息
	 */
	@Override
	public void deleteByPrimaryKey(Integer dispatchId) {
		// TODO Auto-generated method stub
		dispatchMapper.deleteByPrimaryKey(dispatchId);
	}
		
}
