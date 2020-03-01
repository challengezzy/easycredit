package com.easycredit.web.controller;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class BaseController {
	protected static Logger logger = LoggerFactory.getLogger(BaseController.class);
	protected Logger bizlogger = LoggerFactory.getLogger(this.getClass());

	/**
	 * 获取传递的所有参数, 反射实例化对象，再设置属性值 通过泛型回传对象.
	 * 
	 */
	@SuppressWarnings("unchecked")
	public <T> T getBeanByMap(Class<T> clazz) {
		T t = null;
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		Map<String, Object> parameterMap = request.getParameterMap();
		try {
			t = clazz.newInstance();

			BeanUtils.populate(t, parameterMap);

		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return t;
	}

	public HttpServletRequest getRequest() {
		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	}

	public HttpSession getSession() {
		return getRequest().getSession();
	}

	public <T> T copyProperties(T ts, T tf) {
		try {
			BeanUtils.copyProperties(ts, tf);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		return ts;
	}
}