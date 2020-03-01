package com.easycredit.dao.pojo;

import java.io.Serializable;
import java.util.Date;

public class ProductEvidence implements Serializable {
    private Integer id;

    private Integer productid;

    private String evidenceurl;

    private String evidencedescribe;

    private Integer operatorid;

    private Date createdate;

    private Integer displayorder;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public String getEvidenceurl() {
        return evidenceurl;
    }

    public void setEvidenceurl(String evidenceurl) {
        this.evidenceurl = evidenceurl;
    }

    public String getEvidencedescribe() {
        return evidencedescribe;
    }

    public void setEvidencedescribe(String evidencedescribe) {
        this.evidencedescribe = evidencedescribe;
    }

    public Integer getOperatorid() {
        return operatorid;
    }

    public void setOperatorid(Integer operatorid) {
        this.operatorid = operatorid;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Integer getDisplayorder() {
        return displayorder;
    }

    public void setDisplayorder(Integer displayorder) {
        this.displayorder = displayorder;
    }
}