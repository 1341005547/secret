package com.service;

import java.util.List;

import com.entity.Type_apply;

/**
 * 申请类型
 * @author Administrator
 *
 */
public interface Type_applyService {

	/**
     * 查询所有
     * @return
     */
    List<Type_apply> listAll();
}
