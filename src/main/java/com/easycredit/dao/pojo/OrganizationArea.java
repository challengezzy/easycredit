package com.easycredit.dao.pojo;

import java.io.Serializable;

public class OrganizationArea implements Serializable {
    private Integer id;

    private Integer organizationid;

    private Integer organizationareaid;

    private String comments;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrganizationid() {
        return organizationid;
    }

    public void setOrganizationid(Integer organizationid) {
        this.organizationid = organizationid;
    }

    public Integer getOrganizationareaid() {
        return organizationareaid;
    }

    public void setOrganizationareaid(Integer organizationareaid) {
        this.organizationareaid = organizationareaid;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}