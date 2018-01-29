package com.service;

import java.util.List;

import com.entity.Account_dispatch;

/**
 * 报销单
 * @author 霍云平
 *
 * 创建时间：2018年1月25日
 */
public interface Account_dispatchService {
	/**
	 * 添加报销单
	 * @param record
	 * @return
	 */
	 int insert(Account_dispatch record);
	 /**
	  * 根据用户id查询报销单集合
	  * @param uId 用户id
	  * @return 返回报销单集合
	  */
	 List<Account_dispatch> accountdispathDealByuId(Integer uId);
	 /**
	  * 根据申请表id  获得报销单id
	  * @param applyaId 申请id
	  * @return 报销单对象
	  */
	 Account_dispatch accountdispathDealByaId(Integer applyaId);
}
