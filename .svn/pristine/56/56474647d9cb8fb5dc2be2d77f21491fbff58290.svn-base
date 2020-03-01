package com.easycredit.services.manage.order.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easycredit.dao.mapper.OrderInfoExMapper;
import com.easycredit.dao.pojo.OrderInfoEx;
import com.easycredit.services.manage.order.ComprehensivequeryService;

/**
 * 综合查询统计，service
 * 
 * @author Jq
 * 
 */
@Service
@Transactional
public class ComprehensivequeryServiceImpl implements ComprehensivequeryService {
	@Autowired
	private OrderInfoExMapper mapper;

	@Override
	public List<OrderInfoEx> getComprehensivequeryList(OrderInfoEx record) {
		// TODO Auto-generated method stub
		return mapper.getComprehensivequeryList(record);
	}

}
