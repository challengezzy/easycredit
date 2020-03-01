package com.easycredit.services.front;

import javax.servlet.http.HttpServletRequest;

import com.easycredit.dao.pojo.CompanyInfo;
import com.easycredit.dao.pojo.MortgagorInfoEx;
import com.easycredit.dao.pojo.OrderInfoList;

public interface ProductService {

	public int applyFirstSave(MortgagorInfoEx mortgagorInfoEx,Integer OrderId,Integer productId,HttpServletRequest request);

	public int applySecondSave(CompanyInfo companyInfo,Integer OrderId);
	
	public int applyThirdSave(OrderInfoList orderInfoList,Integer OrderId);
	
	public int applySubmit(Integer OrderId);

}
