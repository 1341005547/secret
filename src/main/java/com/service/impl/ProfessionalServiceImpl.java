package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProfessionalMapper;
import com.entity.Professional;
import com.service.ProfessionalService;

@Service
public class ProfessionalServiceImpl implements ProfessionalService {
    @Autowired
	private ProfessionalMapper professionalMapper;//获取职位表
    /**
     * 通过pid 获取职位对象
     */
	@Override
	public Professional getProfessionalById(Integer pid) {
		// TODO Auto-generated method stub
		return professionalMapper.selectByPrimaryKey(pid);
	}
	@Override
	public Professional getProfessionalByUId(Integer uId) {
		// TODO Auto-generated method stub
		return professionalMapper.getProfessionalByUId(uId);
	}


	@Override
	public List<Professional> getAllPro() {
		// TODO Auto-generated method stub
		return professionalMapper.getAllPro();
	}
	
}
