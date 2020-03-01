package com.easycredit.dao.mapper;

import java.util.List;

import com.easycredit.dao.pojo.MortgagorInfo;
import com.easycredit.dao.pojo.MortgagorInfoEx;

public interface MortgagorInfoExMapper {
	List<MortgagorInfoEx> getMortgagorInfo(MortgagorInfoEx record);

	MortgagorInfo getMortgagorInfoByIdNumber(String idnumber);
	int getMortgagorSum();
	
	
	
}