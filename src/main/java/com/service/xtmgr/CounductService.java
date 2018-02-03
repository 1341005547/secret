package com.service.xtmgr;

import java.util.List;

import com.entity.Counduct;

public interface CounductService {
	int deleteByCounductPrimaryKey(Integer counductId);

    int insert(Counduct record);

    int insertCounductSelective(Counduct record);

    Counduct selectByPrimaryKey(Integer counductId);

    int updateByPrimaryKeySelective(Counduct record);

    int updateByCounductPrimaryKey(Counduct record);
    
    List<Counduct> selectCounduct();
}
