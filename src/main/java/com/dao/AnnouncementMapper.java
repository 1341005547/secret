package com.dao;

import java.util.List;

import com.entity.Announcement;

public interface AnnouncementMapper {
    int deleteByPrimaryKey(Integer announcementId);

    int insert(Announcement record);

    int insertSelective(Announcement record);

    Announcement selectByPrimaryKey(Integer announcementId);

    int updateByPrimaryKeySelective(Announcement record);

    int updateByPrimaryKey(Announcement record);
    
    List<Announcement> selectAdver();
}