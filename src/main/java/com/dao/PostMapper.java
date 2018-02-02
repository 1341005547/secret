package com.dao;

import java.util.List;

import com.entity.matters.PostDispatch;
import com.entity.matters.PostDispatchDetail;

public interface PostMapper {
	/**
	 * 获得调任信息
	 * @return
	 */
	List<PostDispatch> selectPostMsg();
	/**
	 * 获得调任详情
	 * @param dispatchId
	 * @return
	 */
	PostDispatchDetail selectPostMsgDetail(Integer dispatchId);
}
