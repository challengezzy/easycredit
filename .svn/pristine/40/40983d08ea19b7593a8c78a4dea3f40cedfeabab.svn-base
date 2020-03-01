package com.easycredit.interceptor;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easycredit.dao.pojo.UserInfo;

/**
 * 后台登陆权限过滤
 * 
 * @author liuxh
 * @since 2012-01-13
 * 
 */
public class LoginFilter implements Filter {
	protected static List<String> allowUrls = Collections.emptyList();
	FilterConfig config = null;
	String[] unFilterExts = {".bmp", ".gif", ".jpg", ".png", ".ico", ".js", ".css", ".eot", ".svg", ".ttf", ".woff",
			".dwr"}; // 不参与过滤的文件后缀

	private static final String USER_SESSION = "UserInfo";

	public void init(FilterConfig config) throws ServletException {
		this.config = config;
		String allowUrl = config.getInitParameter("allowUrl");
		if (allowUrl == null) {
			return;
		}
		allowUrls = new ArrayList<String>();
		String[] ps = allowUrl.split("\n");
		for (String p : ps) {
			p = p.trim();
			if (!"".equals(p)) {
				allowUrls.add(p);
			}
		}
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException,
			ServletException {
		HttpServletResponse res = (HttpServletResponse) response;
		HttpServletRequest req = (HttpServletRequest) request;
		// 防止页面出现乱码
		res.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("UTF-8");

		String path = req.getServletPath();
		if (isAllowURL(path)) {
			chain.doFilter(request, response);
			return;
		}

		// 取session中的用户
		String userName = (String) req.getSession().getAttribute("userNameSession");
		UserInfo userInfo = (UserInfo) req.getSession().getAttribute(USER_SESSION);
		// 带命名空间的请求路径
		String currentURL = req.getRequestURI();
		// 截取不带命名空间的请求路径
		String targetURL = currentURL.substring(currentURL.lastIndexOf("/") + 1);
		// 如果用户没登陆，且访问的不是登陆界面，或者访问的不是图片，则跳转至登录界面
		if (userInfo == null && !targetURL.endsWith("login.html") && !isVisitUnFilterResource(targetURL)) {
			res.sendRedirect(req.getContextPath() + "/");
		} else {
			chain.doFilter(req, res);
		}
	}
	public void destroy() {
		this.config = null;
	}

	protected boolean isAllowURL(String path) {
		Iterator<String> it = allowUrls.iterator();
		while (it.hasNext()) {
			String p = it.next();
			if (path.startsWith(p)) {
				return true;
			}
		}
		return false;
	}

	/**
	 * 检查访问的是否是图片等不需要过滤的资源
	 * 
	 * @return
	 */
	public boolean isVisitUnFilterResource(String targetURL) {
		boolean result = false;
		for (int i = 0; i < unFilterExts.length; i++) {
			if (targetURL.toLowerCase().endsWith(unFilterExts[i])) {
				result = true;
				break;
			}
		}
		return result;
	}

	/**
	 * 没有权限时，跳转至提示页面
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 */
	public void noAuthTip(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.sendRedirect(req.getContextPath() + "/common/403.jsp");
		return;
	}
}
