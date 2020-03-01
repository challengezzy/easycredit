package com.easycredit.utils.tag;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.type.TypeReference;
import org.dom4j.Document;
import org.dom4j.Element;

import com.easycredit.exception.BusinessException;
import com.easycredit.utils.JsonUtils1;
import com.easycredit.utils.XmlUtil;

/**
 * 
 * 类说明：状态内容初始化
 * 
 */
public class StateContext {
	private static Map<String, Map<String, StateVo>> stateConfigs = null;

	/**
	 * 状态项目初始化，该方法应在系统启动时调用
	 * 
	 * @throws BusinessException
	 */
	@SuppressWarnings("unchecked")
	public static void initStateConfigs(String paths) throws BusinessException {
		stateConfigs = new HashMap<String, Map<String, StateVo>>();

		File file = null;
		try {
			file = new File(paths);
		} catch (Exception e) {
			e.printStackTrace();
			return;
		}

		Document doc = null;
		try {
			doc = XmlUtil.getDocument(file);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (doc == null) {
			throw new BusinessException("状态配置文件 xml 不能转化为 document");
		}

		Element root = doc.getRootElement();
		Iterator<Element> it = root.elementIterator("state");
		while (it.hasNext()) {
			Element elem = it.next();
			String name = elem.attributeValue("name");
			String state = elem.attributeValue("state");
			stateConfigs.put(StringUtils.trim(name), stateToMap(StringUtils.trim(state)));
		}
	}

	private static Map<String, StateVo> stateToMap(String state) {
		List<StateVo> list = null;
		Map<String, StateVo> stateVoMap = null;
		try {
			list = JsonUtils1.getMapper().readValue(state, new TypeReference<List<StateVo>>() {
			});
			if (null != list && list.size() > 0) {
				stateVoMap = new HashMap<String, StateVo>();
				for (StateVo stateVo : list) {
					stateVoMap.put(stateVo.getId(), stateVo);
				}
			}
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return stateVoMap;
	}

	public static Map<String, Map<String, StateVo>> getStateConfigs() {
		return stateConfigs;
	}
}
