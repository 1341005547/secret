package com.service.xtmgr;

import java.util.Date;
import java.util.List;

import com.entity.Thelog;

public interface ThelogService {

	int deleteByThelogPrimaryKey(Integer thelogId);

    int insert(Thelog record);

    int addSelective(Thelog record);

    Thelog selectByPrimaryKey(Integer thelogId);
    
    Thelog selectAllLog(Integer thelogId);

    int updateByPrimaryKeySelective(Thelog record);
    
    int updatetime(Thelog record);

    int updateByThelogPrimaryKey(Thelog record);
    
    List<Thelog> selectLog();
    
    int updateByKey(Thelog record);
}
