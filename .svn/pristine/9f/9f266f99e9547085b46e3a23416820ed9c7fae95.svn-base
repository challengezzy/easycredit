package com.easycredit.services.manage.mortgagor;

import java.util.List;

import com.easycredit.dao.pojo.MortgagorContact;
import com.easycredit.dao.pojo.MortgagorInfo;
import com.easycredit.dao.pojo.MortgagorInfoEx;
import com.easycredit.dao.pojo.MortgagorResidential;

public interface MortgagorService {

	public List<MortgagorInfoEx> getMortgagorInfo(MortgagorInfoEx record);

	public int updateByPrimaryKeySelective(MortgagorInfo record);

	public MortgagorInfo selectByPrimaryKey(Integer id);

	public MortgagorInfo selectByIdNumber(String idNumber);

	public int insertSelective(MortgagorInfo record);

	public MortgagorResidential getMortgagorResidentialById(Integer id);

	public MortgagorContact getMortgagorContactById(Integer id);
	
	public int updateMortgagorContact(MortgagorContact record);
	
	public int isIdnumberExists(String  idNumber);


}
