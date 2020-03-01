package com.easycredit.services.manage.orderreturnlist;

import java.util.List;

import com.easycredit.dao.pojo.OrderRetrunList;
import com.easycredit.dao.pojo.OrderRetrunListEx;

public interface OrderReturnListService {
	public List<OrderRetrunListEx> getOrderRetrunList(OrderRetrunListEx record);
	public int updateRebank(Integer returnlistid,Double norepaymentamount);

}
