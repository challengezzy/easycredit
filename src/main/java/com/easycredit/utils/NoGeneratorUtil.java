package com.easycredit.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class NoGeneratorUtil {
	public static String getOrderNo(){
		 SimpleDateFormat simpleDateFormat;  
		  
	        simpleDateFormat = new SimpleDateFormat("yyyyMMdd");  
	  
	        Date date = new Date();  
	  
	        String str = simpleDateFormat.format(date);  
	  
	        Random random = new Random();  
	  
	        int rannum = (int) (random.nextDouble() * (99999 - 10000 + 1)) + 10000;// 获取5位随机数  
	  
	        return "REQ"+ str+ rannum;// 当前时间  
	}
	
	public static String getLoanNo(){
		 SimpleDateFormat simpleDateFormat;  
		  
	        simpleDateFormat = new SimpleDateFormat("yyyyMMdd");  
	  
	        Date date = new Date();  
	  
	        String str = simpleDateFormat.format(date);  
	  
	        Random random = new Random();  
	  
	        int rannum = (int) (random.nextDouble() * (99999 - 10000 + 1)) + 10000;// 获取5位随机数  
	  
	        return "LON"+str+ rannum;// 当前时间  
	}
	 public static void main(String[] args) { 
		 System.out.println(getLoanNo());
	 }

}
