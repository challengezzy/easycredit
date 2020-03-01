package com.easycredit.services.manage.company.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easycredit.dao.mapper.CompanyInfoMapper;
import com.easycredit.dao.pojo.CompanyInfo;
import com.easycredit.services.manage.company.CompanyInfoService;

@Transactional
@Service("CompanyInfoService")
public class CompanyInfoServiceImpl implements CompanyInfoService {
	@Autowired
	CompanyInfoMapper companyInfoMapper;

	@Override
	public CompanyInfo selectByPrimaryKey(Integer id) {
		return companyInfoMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(CompanyInfo record) {
		return companyInfoMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public CompanyInfo selectByMortgagorId(Integer id) {
		return companyInfoMapper.selectByMortgagorId(id);
	}

}
