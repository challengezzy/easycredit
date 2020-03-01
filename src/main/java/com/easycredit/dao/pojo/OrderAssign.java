package com.easycredit.dao.pojo;

import java.io.Serializable;
import java.util.Date;

public class OrderAssign implements Serializable {
    private Integer id;

    private Integer orderid;

    private Integer operatorid;

    private Date assigntime;

    private Date submittime;

    private Integer resultflag;

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

    public Integer getOperatorid() {
        return operatorid;
    }

    public void setOperatorid(Integer operatorid) {
        this.operatorid = operatorid;
    }

    public Date getAssigntime() {
        return assigntime;
    }

    public void setAssigntime(Date assigntime) {
        this.assigntime = assigntime;
    }

    public Date getSubmittime() {
        return submittime;
    }

    public void setSubmittime(Date submittime) {
        this.submittime = submittime;
    }

    public Integer getResultflag() {
        return resultflag;
    }

    public void setResultflag(Integer resultflag) {
        this.resultflag = resultflag;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}