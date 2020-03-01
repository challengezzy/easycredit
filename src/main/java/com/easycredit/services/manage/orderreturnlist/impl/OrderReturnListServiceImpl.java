package com.easycredit.services.manage.orderreturnlist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easycredit.dao.mapper.OrderRetrunListExMapper;
import com.easycredit.dao.mapper.OrderRetrunListMapper;
import com.easycredit.dao.pojo.OrderRetrunList;
import com.easycredit.dao.pojo.OrderRetrunListEx;
import com.easycredit.services.manage.orderreturnlist.OrderReturnListService;

/**
 * 
 * @author Jq 借据管理service
 */
@Service
@Transactional
public class OrderReturnListServiceImpl implements OrderReturnListService {
	@Autowired
	private OrderRetrunListExMapper orderRetrunListExMapper;
	@Autowired
	private OrderRetrunListMapper orderRetrunListMapper;

	@Override
	public List<OrderRetrunListEx> getOrderRetrunList(OrderRetrunListEx record) {
		return orderRetrunListExMapper.getOrderRetrunList(record);
	}

	@Override
	public int updateRebank(Integer returnlistid,
			Double norepaymentamount) {
		// TODO Auto-generated method stub
		OrderRetrunList orderRetrunList= orderRetrunListMapper.selectByPrimaryKey(returnlistid);
		orderRetrunList.setNorepaymentamount(norepaymentamount);
		if(norepaymentamount==0){
			orderRetrunList.setLoanstatus(1);//更新状态已还款
		}else{
			orderRetrunList.setLoanstatus(0);
		}
		orderRetrunListMapper.updateByPrimaryKeySelective(orderRetrunList);
		return orderRetrunList.getId();
	}
	
	

}
