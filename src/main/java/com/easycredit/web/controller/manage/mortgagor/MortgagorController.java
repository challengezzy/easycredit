package com.easycredit.web.controller.manage.mortgagor;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.easycredit.dao.pojo.CompanyInfo;
import com.easycredit.dao.pojo.MortgagorContact;
import com.easycredit.dao.pojo.MortgagorInfo;
import com.easycredit.dao.pojo.MortgagorInfoEx;
import com.easycredit.services.manage.company.CompanyInfoService;
import com.easycredit.services.manage.mortgagor.MortgagorService;
import com.easycredit.utils.Page;
import com.easycredit.web.controller.BaseController;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

@Controller
@RequestMapping("/manage/mortgagor")
public class MortgagorController extends BaseController {
	@Autowired
	private MortgagorService mortgagorService;
	@Autowired
	private CompanyInfoService companyService;
	private static final String LIST = "/manage/mortgagorInfo_list";
	private static final String UPDATE = "/manage/mortgagorInfo_update";
	private static final String RE_LIST = "redirect:/manage/mortgagor/getMortgagorInfoList.html";
	private static final String EXPORT = "/manage/mortgagorInfo_export";

	@RequestMapping(value = {"getMortgagorInfoList"})
	public String getApplyApprovalList(MortgagorInfoEx record,String datepicker, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println(datepicker);
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
//		 record.setStarttime(a[0]);
//		 record.setEndtime(a[1]);
		List<MortgagorInfoEx> list = mortgagorService.getMortgagorInfo(record);
		Page<MortgagorInfoEx> page = new Page<MortgagorInfoEx>();
		page.setPageNo(1);
		page.setPageSize(10);
		page.setTotalCount(list.size());
		page.setResult(list);

		model.addAttribute("page", page);

		return LIST;
	}

	@RequestMapping(value = "/export")
	public String export(MortgagorInfoEx record, Model model, HttpServletRequest request, HttpServletResponse response) {
		List<MortgagorInfoEx> list = mortgagorService.getMortgagorInfo(record);
		Page<MortgagorInfoEx> page = new Page<MortgagorInfoEx>();
		// page.setPageNo(1);
		// page.setPageSize(10);
		page.setTotalCount(list.size());
		page.setResult(list);

		model.addAttribute("page", page);

		return EXPORT;
	}

	@RequestMapping(value = {"updateMortgagorInfo"})
	public String updateMortgagorInfo(MortgagorInfoEx record, Model model, HttpServletRequest request,
			HttpServletResponse response) {

		model.addAttribute("mortgagorinfo", mortgagorService.getMortgagorInfo(record));

		return UPDATE;
	}

	@RequestMapping(value = "/update")
	public String update(MortgagorInfoEx mortgagorInfoEx, RedirectAttributes attr) {
		try {
			int morid = mortgagorInfoEx.getId();
			int companyid = mortgagorInfoEx.getCompanyid();
			MortgagorInfo mortgagorInfo = mortgagorService.selectByPrimaryKey(morid);
			mortgagorInfo.setMortgagorname(mortgagorInfoEx.getMortgagorname());
			mortgagorInfo.setCellphone(mortgagorInfoEx.getCellphone());
			mortgagorInfo.setEmail(mortgagorInfoEx.getEmail());
			int result = mortgagorService.updateByPrimaryKeySelective(mortgagorInfo);
			CompanyInfo companyInfo = companyService.selectByPrimaryKey(companyid);
			companyInfo.setCompanyname(mortgagorInfoEx.getCompanyname());
			int companyresult = companyService.updateByPrimaryKeySelective(companyInfo);
			MortgagorContact mortgagorContact=mortgagorService.getMortgagorContactById(morid);
			mortgagorContact.setCellphone(mortgagorInfoEx.getSpousecellphone());
			mortgagorContact.setIdnumber(mortgagorInfoEx.getSpouseidnumber());
			mortgagorContact.setSpousename(mortgagorInfoEx.getSpousename());
			int mortgagorContactresult=mortgagorService.updateMortgagorContact(mortgagorContact);
			if (result != 1) {
				attr.addFlashAttribute("message", "修改借款人信息失败");
				return UPDATE;
			}
			attr.addFlashAttribute("message", "修改产借款人息成功");
		} catch (Exception e) {
			e.printStackTrace();
			attr.addFlashAttribute("message", e.getMessage());
		}
		return RE_LIST;
	}

}
