package com.service.xtmgr;

import java.util.List;

import com.entity.Announcement;

/**
 * 
 * @author BSL
 *
 */
public interface AnnouncementService {

	int deleteByAnnouncementPrimaryKey(Integer announcementId);

    int insert(Announcement record);

    int insertAnnouncementSelective(Announcement record);

    Announcement selectByPrimaryKey(Integer announcementId);

    int updateByPrimaryKeySelective(Announcement record);

    int updateByAnnouncementPrimaryKey(Announcement record);
    
    List<Announcement> selectAdver();
}
