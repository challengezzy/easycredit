package com.easycredit.web.controller.manage.order;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.easycredit.dao.pojo.OrderInfoEx;
import com.easycredit.services.manage.order.ComprehensivequeryService;
import com.easycredit.utils.Page;
import com.easycredit.web.controller.BaseController;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

@Controller
@RequestMapping("/manage/comprehensive")
public class ComprehensiveController extends BaseController {
	@Autowired
	private ComprehensivequeryService comprehensivequeryService;
	private static final String LIST = "/manage/comprehensiveQuery_list";
	private static final String EXPORT = "/manage/comprehensiveQuery_export";

	@RequestMapping(value = {"getComprehensiveList"})
	public String getComprehensivequeryList(OrderInfoEx record,String datepicker, Model model, HttpServletRequest request,
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
		List<OrderInfoEx> list = comprehensivequeryService.getComprehensivequeryList(record);
		Page<OrderInfoEx> page = new Page<OrderInfoEx>();
		page.setPageNo(1);
		page.setPageSize(10);
		page.setTotalCount(list.size());
		page.setResult(list);

		model.addAttribute("page", page);

		return LIST;

	}

	@RequestMapping(value = "/export")
	public String export(OrderInfoEx record, Model model, HttpServletRequest request, HttpServletResponse response) {
		List<OrderInfoEx> list = comprehensivequeryService.getComprehensivequeryList(record);
		Page<OrderInfoEx> page = new Page<OrderInfoEx>();
		// page.setPageNo(1);
		// page.setPageSize(10);
		page.setTotalCount(list.size());
		page.setResult(list);

		model.addAttribute("page", page);

		return EXPORT;

	}

}
