package com.easycredit.services.manage.orderassign.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easycredit.dao.mapper.OrderAssignExMapper;
import com.easycredit.dao.pojo.OrderAssignEx;
import com.easycredit.services.manage.orderassign.OrderAssignService;

/**
 * 
 * @author Jq 通过业务申请单id查询审批流程的service
 */
@Service
@Transactional
public class OrderAssignServiceImpl implements OrderAssignService {
	@Autowired
	private OrderAssignExMapper orderAssignExMapper;

	@Override
	public List<OrderAssignEx> getOrderAssignByOrderId(Integer orderid) {
		return orderAssignExMapper.getOrderAssignByOrderId(orderid);
	}

}
