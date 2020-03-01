package com.easycredit.dao.pojo;

import java.io.Serializable;
import java.util.Date;

public class MortgagorInfo implements Serializable {
    private Integer id;

    private String mortgagorname;

    private String idnumber;

    private Integer sex;

    private Integer matrimonial;

    private Integer educationalstatus;

    private Integer workinglife;

    private Integer childrennum;

    private String email;

    private String cellphone;

    private String telephone;

    private Integer userid;

    private Date createtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMortgagorname() {
        return mortgagorname;
    }

    public void setMortgagorname(String mortgagorname) {
        this.mortgagorname = mortgagorname;
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getMatrimonial() {
        return matrimonial;
    }

    public void setMatrimonial(Integer matrimonial) {
        this.matrimonial = matrimonial;
    }

    public Integer getEducationalstatus() {
        return educationalstatus;
    }

    public void setEducationalstatus(Integer educationalstatus) {
        this.educationalstatus = educationalstatus;
    }

    public Integer getWorkinglife() {
        return workinglife;
    }

    public void setWorkinglife(Integer workinglife) {
        this.workinglife = workinglife;
    }

    public Integer getChildrennum() {
        return childrennum;
    }

    public void setChildrennum(Integer childrennum) {
        this.childrennum = childrennum;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}