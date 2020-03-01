package com.easycredit.utils.tag;

public class StateVo {
	private String id; // 值
	private String name; // 名称
	private String color = "black"; // 颜色
	private String isshow = "true"; // 是否显示在下拉框里面

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIsshow() {
		return isshow;
	}
	public void setIsshow(String isshow) {
		this.isshow = isshow;
	}
}
