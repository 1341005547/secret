package com.dao;

import java.util.List;

import com.entity.Account_dispatch;

public interface Account_dispatchMapper {
    int deleteByPrimaryKey(Integer aDId);

    int insert(Account_dispatch record);

    int insertSelective(Account_dispatch record);

    Account_dispatch selectByPrimaryKey(Integer aDId);

    int updateByPrimaryKeySelective(Account_dispatch record);

    int updateByPrimaryKey(Account_dispatch record);
    
    Account_dispatch accountdispathDealByaId(Integer applyaId);
    
    List<Account_dispatch> accountdispathDealByuId(Integer uId);
}