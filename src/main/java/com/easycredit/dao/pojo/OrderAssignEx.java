package com.easycredit.dao.pojo;

/**
 * 
 * @author Jq
 *流程派发（审批）的扩展类，需要扩展审批环节、审批人两个字段
 */
public class OrderAssignEx extends OrderAssign {
	Integer organizationtype;//组织类型角色字典，0，初审组，1，复审组，2，合作商审批组，3，系统管理组
	String organizationname;
	String username;
	String nickname;
	String authoritytypeflags;
	Integer organizationid;
	public Integer getOrganizationtype() {
		return organizationtype;
	}
	public void setOrganizationtype(Integer organizationtype) {
		this.organizationtype = organizationtype;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getOrganizationname() {
		return organizationname;
	}
	public void setOrganizationname(String organizationname) {
		this.organizationname = organizationname;
	}
	public String getAuthoritytypeflags() {
		return authoritytypeflags;
	}
	public void setAuthoritytypeflags(String authoritytypeflags) {
		this.authoritytypeflags = authoritytypeflags;
	}
	public Integer getOrganizationid() {
		return organizationid;
	}
	public void setOrganizationid(Integer organizationid) {
		this.organizationid = organizationid;
	}
	
	
	

}
