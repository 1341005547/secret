package com.service.matters;

import java.util.List;

import com.entity.matters.PostDispatch;
import com.entity.matters.PostDispatchDetail;

public interface PostService {

	/**
	 * 获取员工调动信息
	 */
	List<PostDispatch> selectStaffMsg();
	/**
	 * 获得员工调动详情
	 */
	PostDispatchDetail selectStaffDetail(Integer id);
	/**
	 * 删除调动信息
	 */
	void deleteByPrimaryKey(Integer id);
}
