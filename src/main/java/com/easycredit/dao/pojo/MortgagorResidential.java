package com.easycredit.dao.pojo;

import java.io.Serializable;

public class MortgagorResidential implements Serializable {
    private Integer id;

    private Integer mortgagorid;

    private Integer houseproperty;

    private Double housingloan;

    private String residentialaddress;

    private String registeraddress;

    private Integer contactaddresstype;

    private Integer citylife;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMortgagorid() {
        return mortgagorid;
    }

    public void setMortgagorid(Integer mortgagorid) {
        this.mortgagorid = mortgagorid;
    }

    public Integer getHouseproperty() {
        return houseproperty;
    }

    public void setHouseproperty(Integer houseproperty) {
        this.houseproperty = houseproperty;
    }

    public Double getHousingloan() {
        return housingloan;
    }

    public void setHousingloan(Double housingloan) {
        this.housingloan = housingloan;
    }

    public String getResidentialaddress() {
        return residentialaddress;
    }

    public void setResidentialaddress(String residentialaddress) {
        this.residentialaddress = residentialaddress;
    }

    public String getRegisteraddress() {
        return registeraddress;
    }

    public void setRegisteraddress(String registeraddress) {
        this.registeraddress = registeraddress;
    }

    public Integer getContactaddresstype() {
        return contactaddresstype;
    }

    public void setContactaddresstype(Integer contactaddresstype) {
        this.contactaddresstype = contactaddresstype;
    }

    public Integer getCitylife() {
        return citylife;
    }

    public void setCitylife(Integer citylife) {
        this.citylife = citylife;
    }
}