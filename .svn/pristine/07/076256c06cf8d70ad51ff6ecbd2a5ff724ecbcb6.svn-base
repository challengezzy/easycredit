package com.easycredit.utils;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

public class StringUtil {

	/**
	 * 判空，空：true ,否则：false
	 * 
	 * @param value
	 * @return
	 */
	public static boolean isEmpty(String value) {
		if (StringUtils.isBlank(value) && StringUtils.isEmpty(value)) {
			return true;
		}
		return false;
	}

	/**
	 * 对象转字符串
	 * 
	 * @param object
	 * @return
	 */
	public static String objToString(Object object) {
		return ToStringBuilder.reflectionToString(object, ToStringStyle.SHORT_PREFIX_STYLE);
	}

	/**
	 * 是否失败
	 * 
	 * @param object
	 * @return
	 */
	public static void isSuccess(int status, String reason) {
		if (status < 0) {
			throw new IllegalArgumentException(reason);
		}
	}

	public static void hasErrors(BindingResult error) {
		if (error.hasErrors()) {
			FieldError fieldError = error.getFieldError();
			if (StringUtils.isNotEmpty(fieldError.getDefaultMessage())) {
				throw new IllegalArgumentException(fieldError.getDefaultMessage());
			}
		}
	}
}
