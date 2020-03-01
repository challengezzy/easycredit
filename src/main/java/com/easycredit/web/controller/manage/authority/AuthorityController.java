package com.easycredit.web.controller.manage.authority;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.easycredit.dao.pojo.OrganizationEx;
import com.easycredit.services.manage.user.OrganizationService;
import com.easycredit.utils.Page;
import com.easycredit.web.controller.BaseController;

@Controller
@RequestMapping("/manage/authority")
public class AuthorityController extends BaseController {
	@Autowired
	OrganizationService organizationService;
	
	public static final String ORGANIZATION_LIST_AUTH = "/security/organization/organization_list_auth";
	@RequestMapping(value = "/query")
	public String list(@RequestParam(defaultValue = "1") Integer pageNum,
			@RequestParam(defaultValue = "10") Integer pageSize, HttpServletRequest request, Model model,
			OrganizationEx organization) {
		try {
			Page<OrganizationEx> userInfos = organizationService.query(organization, pageNum, pageSize);

			model.addAttribute("page", userInfos);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return ORGANIZATION_LIST_AUTH;
	}

}
