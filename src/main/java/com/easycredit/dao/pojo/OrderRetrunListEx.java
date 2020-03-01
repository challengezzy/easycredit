package com.easycredit.dao.pojo;

import java.util.Date;

/**
 * 
 * @author Jq 借据管理DTO，封装以借据为主表的信息
 */
public class OrderRetrunListEx extends OrderRetrunList {
	private static final long serialVersionUID = 1L;
	private Integer orderid;
	private String orderno;
	private String productname;
	private String mortgagorname;
	private String companyname;
	private String loantimes;
	private String loanlimittimes;
	private Date starttime;
	private Date endtime;

	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getMortgagorname() {
		return mortgagorname;
	}
	public void setMortgagorname(String mortgagorname) {
		this.mortgagorname = mortgagorname;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getLoantimes() {
		return loantimes;
	}
	public void setLoantimes(String loantimes) {
		this.loantimes = loantimes;
	}
	public String getLoanlimittimes() {
		return loanlimittimes;
	}
	public void setLoanlimittimes(String loanlimittimes) {
		this.loanlimittimes = loanlimittimes;
	}
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	
}
