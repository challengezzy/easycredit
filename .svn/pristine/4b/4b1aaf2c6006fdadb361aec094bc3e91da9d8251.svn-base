package com.easycredit.web.controller.manage.orderreturnlist;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.easycredit.dao.pojo.OrderRetrunListEx;
import com.easycredit.services.manage.orderreturnlist.OrderReturnListService;
import com.easycredit.utils.Page;
import com.easycredit.web.controller.BaseController;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

/**
 * 
 * @author Jq
 *借据管理控制器
 */
@Controller
@RequestMapping("/manage/orderretrunlist")
public class OrderReturnListController extends BaseController {
	@Autowired
	private OrderReturnListService orderReturnListService;
	private static final String LIST = "/manage/orderreturn_list";//数据返回到page
	private static final String REBANK = "/manage/orderrebank_list";
	@RequestMapping(value = {"getOrderReturnList"})
	public String getOrderReturnList(OrderRetrunListEx record,String datepicker, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		
		if(datepicker!=""&&datepicker!=null){
			 String a[] = datepicker.split(" - ");  
			 
			 try  
			 {  
			     SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");  
			     Date datestart = sdf.parse(a[0]);  
			     Date dateend = sdf.parse(a[1]); 
			     record.setStarttime(datestart);
			     record.setEndtime(dateend);
			 }  
			 catch (ParseException | java.text.ParseException e)  
			 {  
			     System.out.println(e.getMessage());  
			 }  }
		List<OrderRetrunListEx> list=orderReturnListService.getOrderRetrunList(record);
		Page<OrderRetrunListEx> page=new Page<OrderRetrunListEx>();
		page.setPageNo(1);
		page.setPageSize(10);
		page.setTotalCount(list.size());
		page.setResult(list);

		model.addAttribute("page", page);

		return LIST;
		
	}
	
	@RequestMapping(value = {"orderRebank"})
	public String orderRebank(Integer returnlistid, Model model, HttpServletRequest request,
			HttpServletResponse response) {
	

		model.addAttribute("returnlistid", returnlistid);

		return REBANK;
		
	}
	
	@RequestMapping(value = {"updateRebank"})
	public String updateRebank(Integer returnlistid,Double norepaymentamount, Model model, HttpServletRequest request,
			HttpServletResponse response) {
	
		int result=orderReturnListService.updateRebank(returnlistid, norepaymentamount);
//		model.addAttribute("returnlistid", returnlistid);

		return "redirect:/manage/orderretrunlist/getOrderReturnList.html";
		
	}
}
