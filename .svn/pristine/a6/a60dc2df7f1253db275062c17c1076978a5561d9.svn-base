package com.easycredit.dao.mapper;

import java.util.List;
import java.util.Map;

import com.easycredit.dao.pojo.OrderInfo;
import com.easycredit.dao.pojo.OrderInfoEx;

public interface OrderInfoExMapper {

	List<OrderInfoEx> getApplyApprovals(OrderInfoEx record);

	List<OrderInfoEx> queryOrderList(Map<String, Object> paramMap);

	int queryOrderListCount(Map<String, Object> paramMap);

	List<OrderInfoEx> queryMyBusiness(Map<String, Object> paramMap);

	int queryMyBusinessCount(Map<String, Object> paramMap);
	List<OrderInfoEx> getComprehensivequeryList(OrderInfoEx record);//综合查询统计
	
	OrderInfo getOrderInfoByPidAndIdnumber(Map<String, Object> paramMap );//根据身份证号和产品id查订单

}