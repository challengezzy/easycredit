package com.easycredit;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.ws.rs.core.Response;

import org.apache.cxf.jaxrs.client.WebClient;
import org.junit.Before;
import org.junit.Test;

public class AdminTest {
	WebClient client;

	public Response send(String path, String json) {
		Response r = client.path(path).header("Content-Type", "application/json; charset=UTF-8")
				.header("X-AUTH-HEADER", "AC8924DC56D2EC78A3DE022137995A05").accept("application/json; charset=UTF-8")
				.get();

		if (r.getStatus() >= 400 && r.getStatus() <= 500) {
			System.out.println("Response->" + r.readEntity(String.class));
		} else {
			System.out.println("Response->" + r.readEntity(String.class));
		}

		return r;
	}

	@Before
	public void before() {
		client = WebClient.create("http://17p.jxf2012.org/zh-cn/sport/main/?theme=JXF");
	}

	@Test
	public void getBrandListTest() {
		try {
			ScriptEngineManager sem = new ScriptEngineManager();
			ScriptEngine se = sem.getEngineByName("javascript");

			// String json = mapper.writeValueAsString("");
			this.send("", "");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
