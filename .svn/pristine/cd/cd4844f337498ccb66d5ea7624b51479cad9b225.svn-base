package com.easycredit.services.front.impl;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easycredit.dao.mapper.CompanyInfoMapper;
import com.easycredit.dao.mapper.MortgagorContactMapper;
import com.easycredit.dao.mapper.MortgagorInfoMapper;
import com.easycredit.dao.mapper.MortgagorResidentialMapper;
import com.easycredit.dao.mapper.OrderAssignMapper;
import com.easycredit.dao.mapper.OrderInfoListMapper;
import com.easycredit.dao.mapper.OrderInfoMapper;
import com.easycredit.dao.pojo.CompanyInfo;
import com.easycredit.dao.pojo.MortgagorContact;
import com.easycredit.dao.pojo.MortgagorInfo;
import com.easycredit.dao.pojo.MortgagorInfoEx;
import com.easycredit.dao.pojo.MortgagorResidential;
import com.easycredit.dao.pojo.OrderAssign;
import com.easycredit.dao.pojo.OrderInfo;
import com.easycredit.dao.pojo.OrderInfoList;
import com.easycredit.services.front.MortgagorContactService;
import com.easycredit.services.front.OrderInfoService;
import com.easycredit.services.front.ProductService;
import com.easycredit.utils.BeanUtil;
import com.easycredit.utils.NoGeneratorUtil;

@Transactional
@Service("ProductService")
public class ProductServiceImpl implements ProductService {
	@Autowired
	MortgagorContactService mortgagorContactService;
	@Autowired
	OrderInfoService orderInfoService;
	@Autowired
	CompanyInfoMapper companyInfoMapper;
	@Autowired
	MortgagorInfoMapper mortgagorInfoMapper;
	@Autowired
	MortgagorResidentialMapper mortgagorResidentialMapper;
	@Autowired
	MortgagorContactMapper mortgagorContactMapper;
	@Autowired
	OrderInfoMapper orderInfoMapper;
	@Autowired
	OrderInfoListMapper orderInfoListMapper;
	@Autowired
	OrderAssignMapper orderAssignMapper;

	@Override
	public int applyFirstSave(MortgagorInfoEx mortgagorInfoEx, Integer OrderId, Integer productId,
			HttpServletRequest request) {
		int orderInfoId = 0;
		if (OrderId != null) {
			// 更新一套
			OrderInfo orderinfo = orderInfoMapper.selectByPrimaryKey(OrderId);
			MortgagorInfo mortgagorInfo = BeanUtil.getMortgagorInfo(mortgagorInfoEx, request);

			mortgagorInfo.setId(orderinfo.getMortgagorid());
			mortgagorInfoMapper.updateByPrimaryKey(mortgagorInfo);
			MortgagorResidential mortgagorResidential = BeanUtil.getMortgagorResidential(mortgagorInfoEx,
					orderinfo.getMortgagorid());// 此处已修改
			MortgagorResidential morResidential = mortgagorResidentialMapper.selectByMortgagorId(orderinfo
					.getMortgagorid());
			mortgagorResidential.setId(morResidential.getId());
			mortgagorResidentialMapper.updateByPrimaryKey(mortgagorResidential);
			MortgagorContact mortgagorContact = BeanUtil.getMortgagorContact(mortgagorInfoEx,
					orderinfo.getMortgagorid());// 此处已修改
			MortgagorContact morContact = mortgagorContactMapper.selectByMortgagorId(orderinfo.getMortgagorid());
			mortgagorContact.setId(morContact.getId());
			mortgagorContactMapper.updateByPrimaryKey(mortgagorContact);

			orderInfoId = orderinfo.getId();
		} else {
			// 第一次申请，保存一套

			MortgagorInfo mortgagorInfo = BeanUtil.getMortgagorInfo(mortgagorInfoEx, request);
			int mortgagorid = mortgagorContactService.addMortgagorInfo(mortgagorInfo);
			MortgagorResidential mortgagorResidential = BeanUtil.getMortgagorResidential(mortgagorInfoEx, mortgagorid);
			mortgagorContactService.addMortgagorResidential(mortgagorResidential);
			MortgagorContact mortgagorContact = BeanUtil.getMortgagorContact(mortgagorInfoEx, mortgagorid);
			mortgagorContactService.addMortgagorContact(mortgagorContact);
			OrderInfo orderinfo = BeanUtil.getOrderInfo(mortgagorInfoEx, mortgagorid, request);
			orderinfo.setOrderno(NoGeneratorUtil.getOrderNo());
			orderinfo.setProductid(productId);

			orderInfoId = orderInfoService.addorder(orderinfo);
		}
		return orderInfoId;
	}

	@Override
	public int applySecondSave(CompanyInfo record, Integer orderId) {
		// 没有执行第一步，直接执行第二步
		// 已经经过第一步了，看看是新增还是更新
		OrderInfo orderinfo = orderInfoMapper.selectByPrimaryKey(orderId);
		int mortgagorid = orderinfo.getMortgagorid();
		CompanyInfo companyInfo = companyInfoMapper.selectByMortgagorId(mortgagorid);
		if (companyInfo != null) {
			// 更新一套
			record.setId(companyInfo.getId());
			record.setMortgagorid(mortgagorid);
			companyInfoMapper.updateByPrimaryKeySelective(record);
			orderinfo.setStatus(-2);
			orderInfoMapper.updateByPrimaryKeySelective(orderinfo);
		} else {
			// add一套
			record.setMortgagorid(mortgagorid);
			companyInfoMapper.insertSelective(record);
			orderinfo.setStatus(-2);
			orderInfoMapper.updateByPrimaryKeySelective(orderinfo);
		}
		return orderId;
	}

	@Override
	public int applyThirdSave(OrderInfoList orderInfoList, Integer orderId) {
		// 已经经过第一步了，看看是新增还是更新
		OrderInfo orderinfo = orderInfoMapper.selectByPrimaryKey(orderId);
		int orderinfoId = orderinfo.getId();
		OrderInfoList list = orderInfoListMapper.selectByOrderId(orderinfoId);
		if (list != null) {// 更新一套
			orderInfoList.setId(list.getId());
			orderInfoListMapper.updateByPrimaryKeySelective(orderInfoList);
			orderinfo.setStatus(-3);
			orderInfoMapper.updateByPrimaryKeySelective(orderinfo);
		} else {// add一套
			orderInfoList.setOrderid(orderId);
			orderInfoListMapper.insertSelective(orderInfoList);
			orderinfo.setStatus(-3);
			orderInfoMapper.updateByPrimaryKeySelective(orderinfo);
		}
		return orderId;
	}

	@Override
	public int applySubmit(Integer orderId) {
		OrderInfo orderinfo = orderInfoMapper.selectByPrimaryKey(orderId);
		orderinfo.setStatus(0);// 初审中
		orderInfoMapper.updateByPrimaryKeySelective(orderinfo);// 更新orderinfo
		OrderAssign orderAssign = new OrderAssign();
		orderAssign.setOrderid(orderId);
		orderAssign.setAssigntime(new Date());
		orderAssignMapper.insertSelective(orderAssign);

		return orderId;
	}

}
