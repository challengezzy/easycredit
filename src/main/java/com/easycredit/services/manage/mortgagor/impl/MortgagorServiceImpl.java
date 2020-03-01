package com.easycredit.services.manage.mortgagor.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easycredit.dao.mapper.MortgagorContactMapper;
import com.easycredit.dao.mapper.MortgagorInfoExMapper;
import com.easycredit.dao.mapper.MortgagorInfoMapper;
import com.easycredit.dao.mapper.MortgagorResidentialMapper;
import com.easycredit.dao.pojo.MortgagorContact;
import com.easycredit.dao.pojo.MortgagorInfo;
import com.easycredit.dao.pojo.MortgagorInfoEx;
import com.easycredit.dao.pojo.MortgagorResidential;
import com.easycredit.services.manage.mortgagor.MortgagorService;

/**
 * 
 * @author Jq 借款人信息展示service
 */

@Transactional
@Service("MortgagorService")
public class MortgagorServiceImpl implements MortgagorService {
	@Autowired
	private MortgagorInfoExMapper mortgagorInfoExMapper;
	@Autowired
	private MortgagorInfoMapper mortgagorInfoMapper;
	@Autowired
	private MortgagorResidentialMapper mortgagorResidentialMapper;
	@Autowired
	private MortgagorContactMapper mortgagorContactMapper;

	@Override
	public List<MortgagorInfoEx> getMortgagorInfo(MortgagorInfoEx record) {
		return mortgagorInfoExMapper.getMortgagorInfo(record);
	}

	@Override
	public int updateByPrimaryKeySelective(MortgagorInfo record) {
		return mortgagorInfoMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public MortgagorInfo selectByPrimaryKey(Integer id) {
		return mortgagorInfoMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertSelective(MortgagorInfo record) {
		return mortgagorInfoMapper.insertSelective(record);
	}

	@Override
	public MortgagorResidential getMortgagorResidentialById(Integer id) {
		return mortgagorResidentialMapper.selectByMortgagorId(id);
	}

	@Override
	public MortgagorContact getMortgagorContactById(Integer id) {
		return mortgagorContactMapper.selectByMortgagorId(id);
	}

	@Override
	public MortgagorInfo selectByIdNumber(String idNumber) {
		return mortgagorInfoExMapper.getMortgagorInfoByIdNumber(idNumber);
	}

	@Override
	public int updateMortgagorContact(MortgagorContact record) {
		return mortgagorContactMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int isIdnumberExists(String idNumber) {
		MortgagorInfo mortgagorInfo = mortgagorInfoExMapper.getMortgagorInfoByIdNumber(idNumber);
		if (mortgagorInfo != null) {
			return 1;
		} else {
			return 0;
		}
	}

}
