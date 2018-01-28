package com.dao;

import java.util.List;

import com.entity.Msg_info;

public interface Msg_infoMapper {
    int deleteByPrimaryKey(Integer msgId);

    int insert(Msg_info record);

    int insertSelective(Msg_info record);

    Msg_info selectByPrimaryKey(Integer msgId);
    List<Msg_info> getMsg_infoByUid(Integer msgSendtoUId);
    int updateByPrimaryKeySelective(Msg_info record);

    int updateByPrimaryKey(Msg_info record);
}