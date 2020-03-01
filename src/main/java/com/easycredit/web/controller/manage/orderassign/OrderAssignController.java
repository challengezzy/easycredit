package com.easycredit.web.controller.manage.orderassign;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.easycredit.dao.pojo.OrderAssignEx;
import com.easycredit.services.manage.orderassign.OrderAssignService;
import com.easycredit.utils.Page;

/**
 * 
 * @author Jq 审批流程监控控制器
 */
@Controller
@RequestMapping("/manage/orderassign")
public class OrderAssignController {
	@Autowired
	private OrderAssignService orderAssignService;
	private static final String LIST = "/manage/orderassignlist_dlag";//数据返回到page，"/security/organization/organization_list_auth"

	@RequestMapping(value = {"getOrderAssignByOrderId"})
	public String getOrderAssignByOrderId(Integer orderid, Model model, HttpServletRequest request,
			HttpServletResponse response) {

		List<OrderAssignEx> list = orderAssignService.getOrderAssignByOrderId(orderid);

		Page<OrderAssignEx> page = new Page<OrderAssignEx>();
		page.setPageNo(1);
		page.setPageSize(10);
		page.setTotalCount(list.size());
		page.setResult(list);

		model.addAttribute("page", page);

		return LIST;
	}

}
