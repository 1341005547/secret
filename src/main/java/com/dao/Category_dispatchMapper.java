package com.dao;

import java.util.List;

import com.entity.Category_dispatch;

public interface Category_dispatchMapper {
    int deleteByPrimaryKey(Integer cDId);

    int insert(Category_dispatch record);

    int insertSelective(Category_dispatch record);

    Category_dispatch selectByPrimaryKey(Integer cDId);

    int updateByPrimaryKeySelective(Category_dispatch record);

    int updateByPrimaryKey(Category_dispatch record);
    
    List<Category_dispatch> getAllCategotyDispatch();
}