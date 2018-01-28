package com.service;

import java.util.List;

import com.entity.Msg_info;

/**
 * 邮箱业务接口
 * @author Administrator
 *
 */
public interface Msg_infoService {

	public List<Msg_info> getMsg_infoByUid(Integer uid);
	/**
	 * 根据msgid 改变属性
	 */
	int updateMsg_infoByMsgid(Msg_info record);
    /**
     * 添加邮箱
     */
	int insertByMsgInfo(Msg_info record);
}
