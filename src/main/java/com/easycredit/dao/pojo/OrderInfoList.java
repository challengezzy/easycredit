package com.easycredit.dao.pojo;

import java.io.Serializable;

public class OrderInfoList implements Serializable {
    private Integer id;

    private Integer orderid;

    private Double applicationamount;

    private Integer applicationlimit;

    private Double avilblemonthlyrepayment;

    private String tradecode;

    private String tradename;

    private String purpose;

    private String sourceofrepayment;

    private String comments;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Double getApplicationamount() {
        return applicationamount;
    }

    public void setApplicationamount(Double applicationamount) {
        this.applicationamount = applicationamount;
    }

    public Integer getApplicationlimit() {
        return applicationlimit;
    }

    public void setApplicationlimit(Integer applicationlimit) {
        this.applicationlimit = applicationlimit;
    }

    public Double getAvilblemonthlyrepayment() {
        return avilblemonthlyrepayment;
    }

    public void setAvilblemonthlyrepayment(Double avilblemonthlyrepayment) {
        this.avilblemonthlyrepayment = avilblemonthlyrepayment;
    }

    public String getTradecode() {
        return tradecode;
    }

    public void setTradecode(String tradecode) {
        this.tradecode = tradecode;
    }

    public String getTradename() {
        return tradename;
    }

    public void setTradename(String tradename) {
        this.tradename = tradename;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getSourceofrepayment() {
        return sourceofrepayment;
    }

    public void setSourceofrepayment(String sourceofrepayment) {
        this.sourceofrepayment = sourceofrepayment;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}