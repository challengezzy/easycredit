package com.easycredit.utils.tag;

import java.io.IOException;
import java.util.Map;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;

/**
 * 类说明：状态选择器
 */
public class SelectStateTag extends BaseTag {
	private static final long serialVersionUID = -5098966483659645332L;

	private String showType = "select";
	private String stateType = "";
	private String emptyString = "--请选择--";

	@Override
	public int doStartTag() throws JspException {
		JspWriter out = this.pageContext.getOut();
		try {
			Map<String, StateVo> stateVoMap = StateContext.getStateConfigs().get(stateType);
			if ("select".equals(showType)) {
				out.print("<select " + getParameters() + ">");
				if (emptyString != null && !"".equals(emptyString)) {
					out.print("<option value=''>" + emptyString + "</option>");
				}
				for (Map.Entry<String, StateVo> entry : stateVoMap.entrySet()) {
					if (!"false".equals(entry.getValue().getIsshow())) {
						out.print("<option value='" + entry.getKey() + "'");
						if (entry.getKey().equals(getValue())) {
							out.print(" selected='selected' ");
						}
						String colorStr = entry.getValue().getColor() == null ? "" : " class='option-"
								+ entry.getValue().getColor() + "'";
						out.print(colorStr + ">");
						out.print(entry.getValue().getName());
						out.print("</option>");
					}
				}
				out.print("</select>");
			} else if ("label".equals(showType)) {
				StateVo stateVo = stateVoMap.get(getValue());
				if (stateVo == null) {
					out.print("未知状态");
				} else {
					String colorStr = stateVo.getColor() == null ? "" : " class='label label-" + stateVo.getColor()
							+ "'";
					out.print("<span " + colorStr + ">");
					out.print(stateVo.getName());
					out.print("</span>");
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return super.doStartTag();
	}

	public String getShowType() {
		return showType;
	}

	public void setShowType(String showType) {
		this.showType = showType;
	}

	public String getStateType() {
		return stateType;
	}

	public void setStateType(String stateType) {
		this.stateType = stateType;
	}

	public String getEmptyString() {
		return emptyString;
	}

	public void setEmptyString(String emptyString) {
		this.emptyString = emptyString;
	}

}
