package com.easycredit.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	public static final String YMD = "yyyy-MM-dd";
	public static final String YMDHMS = "yyyy-MM-dd HH:mm:ss";

	public static Date format(String date, String format) throws ParseException {
		return new SimpleDateFormat(format).parse(date);
	}

	public static Date formatYMD(String date) {
		try {
			return DateUtil.format(date, DateUtil.YMD);
		} catch (ParseException e) {
			throw new IllegalArgumentException("日期格式化异常 格式(yyyy-MM-dd)");
		}
	}

	public static Date formatYMDHMS(String date) {
		try {
			return DateUtil.format(date, DateUtil.YMDHMS);
		} catch (ParseException e) {
			throw new IllegalArgumentException("日期格式化异常 格式(yyyy-MM-dd HH:mm:ss)");
		}
	}

	public static String get(String format) {
		return new SimpleDateFormat(format).format(new Date());
	}

	public static String getYMDHMS() {
		return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
	}

	public static String getYMD() {
		return new SimpleDateFormat("yyyyMMdd").format(new Date());
	}

}
