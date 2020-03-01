package com.easycredit.dao.pojo;

import java.io.Serializable;

public class Area implements Serializable {
    private Integer areaId;

    private String areaName;

    private String areaZipCode;

    private String areaPId;

    private String areaTopPid;

    private String areaPids;

    private String areaPidsNames;

    private String areaChilds;

    private static final long serialVersionUID = 1L;

    public Integer getAreaId() {
        return areaId;
    }

    public void setAreaId(Integer areaId) {
        this.areaId = areaId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getAreaZipCode() {
        return areaZipCode;
    }

    public void setAreaZipCode(String areaZipCode) {
        this.areaZipCode = areaZipCode;
    }

    public String getAreaPId() {
        return areaPId;
    }

    public void setAreaPId(String areaPId) {
        this.areaPId = areaPId;
    }

    public String getAreaTopPid() {
        return areaTopPid;
    }

    public void setAreaTopPid(String areaTopPid) {
        this.areaTopPid = areaTopPid;
    }

    public String getAreaPids() {
        return areaPids;
    }

    public void setAreaPids(String areaPids) {
        this.areaPids = areaPids;
    }

    public String getAreaPidsNames() {
        return areaPidsNames;
    }

    public void setAreaPidsNames(String areaPidsNames) {
        this.areaPidsNames = areaPidsNames;
    }

    public String getAreaChilds() {
        return areaChilds;
    }

    public void setAreaChilds(String areaChilds) {
        this.areaChilds = areaChilds;
    }
}