package com.easycredit.web.controller.manage.security;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.easycredit.dao.pojo.UserInfo;
import com.easycredit.dao.pojo.UserInfoEx;
import com.easycredit.services.BaseService;
import com.easycredit.services.manage.user.OrganizationService;
import com.easycredit.services.manage.user.UserService;
import com.easycredit.utils.Page;
import com.easycredit.utils.SHA256EncryptUtil;
import com.easycredit.web.controller.manage.security.shiro.ShiroRealm;

@Controller
@RequestMapping("/manage/security/user")
public class UserController implements BaseService {
	@Autowired
	UserService userService;
	@Autowired
	OrganizationService organizationService;

	@RequestMapping(value = "/query")
	public String list(@RequestParam(defaultValue = "1") Integer pageNum,
			@RequestParam(defaultValue = "10") Integer pageSize, HttpServletRequest request, Model model,
			UserInfoEx userInfo) {
		try {
			Page<UserInfoEx> page = userService.query(userInfo, pageNum, pageSize);

			model.addAttribute("page", page);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return USER_LIST;
	}
	@RequestMapping(value = "/save")
	public String save(UserInfo userInfo, RedirectAttributes attr) {
		try {
			int result = 0;
			if (userInfo.getId() == null) {
				userInfo.setPassword(SHA256EncryptUtil.Encrypt(userInfo.getPassword()));
				result = userService.insert(userInfo);
			} else {
				userInfo.setPassword(SHA256EncryptUtil.Encrypt(userInfo.getPassword()));
				result = userService.updateByPrimaryKey(userInfo);
			}
			if (result != 1) {
				attr.addFlashAttribute("message", "新增/修改用户失败");
				return USER_CREATE;
			}
			attr.addFlashAttribute("message", "保存用户成功");
		} catch (Exception e) {
			e.printStackTrace();
			attr.addFlashAttribute("message", e.getMessage());
		}
		return USER_RE_LIST;
	}

	@RequestMapping(value = "/create")
	public String create(HttpServletRequest request, Model model) {
		model.addAttribute("organizations", organizationService.list());
		return USER_CREATE;
	}

	@RequestMapping(value = "/update")
	public String update(Integer id, Model model) {
		try {
			UserInfo userInfo = userService.selectByPrimaryKey(id);

			model.addAttribute("user", userInfo);
			// 组织机构
			model.addAttribute("organizations", organizationService.list());
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return USER_CREATE;
	}

	@RequestMapping(value = "/getUserByName")
	@ResponseBody
	public String getUserByName(String userName) {
		UserInfo userInfo = userService.getUserByUserName(userName);
		if (userInfo != null) {
			return "true";
		}
		return "false";
	}

	@RequestMapping(value = "/del")
	public String del(Model model, Integer id, RedirectAttributes attr) {
		try {
			int result = userService.deleteByPrimaryKey(id);
			if (result != 1) {
				attr.addFlashAttribute("message", "删除用户失败");
				return USER_CREATE;
			}
			attr.addFlashAttribute("message", "删除用户成功");
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return USER_RE_LIST;
	}

	@RequestMapping(value = "/updatePasswordSave")
	public String updatePasswordSave(Model model, Integer userId, String password, RedirectAttributes attr) {
		try {
			// 获取
			UserInfo userInfo = userService.selectByPrimaryKey(userId);
			userInfo.setPassword(SHA256EncryptUtil.Encrypt(password));
			// 更新
			int result = userService.updateByPrimaryKey(userInfo);
			if (result != 1) {
				attr.addFlashAttribute("message", "重置密码失败");
			}
			attr.addFlashAttribute("message", "重置密码成功");
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return USER_RE_LIST;
	}

	@RequestMapping(value = "/view")
	public String view(Model model) {
		try {
			Subject subject = SecurityUtils.getSubject();
			ShiroRealm.ShiroUser user = (ShiroRealm.ShiroUser) subject.getPrincipal();
			model.addAttribute("user", user);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return USER_MYINFO;
	}

}
