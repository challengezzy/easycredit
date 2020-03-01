package com.easycredit.dao.pojo;

import java.io.Serializable;

public class OrganizationAuthority implements Serializable {
    private Integer id;

    private Integer organizationid;

    private Integer authoritytypeflag;

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

    public Integer getAuthoritytypeflag() {
        return authoritytypeflag;
    }

    public void setAuthoritytypeflag(Integer authoritytypeflag) {
        this.authoritytypeflag = authoritytypeflag;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}