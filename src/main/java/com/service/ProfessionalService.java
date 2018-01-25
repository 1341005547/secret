package com.service;

import java.util.List;

import com.entity.Professional;

public interface ProfessionalService {

	/**
     * 通过uId查找职位
     * @param uId
     * @return
     */
    Professional getProfessionalByUId(Integer uId);
    /**
     * 查询所有
     * @return
     */
    List<Professional> getAllPro();
}
