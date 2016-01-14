package net.eipk.kjjr.controller;

import java.util.Map;

import net.eipk.core.mvc.Model;
import net.eipk.core.mvc.annotation.EipkController;
import net.eipk.core.mvc.annotation.EipkRequest;
import net.eipk.kjjr.util.RoleUtil;

@EipkController
public class Main {
	@SuppressWarnings("unchecked")
	@EipkRequest("/s/main")
	public String showMainPage(Model m){

		Map<String,Object> user=(Map<String,Object>)m.getSessionPar("loginUser");

		m.setAttr("loginUserName", user.get("userCode"));
		m.setAttr("loginUserRole", RoleUtil.getRoleByUserId((Integer)user.get("id")).get("roleName"));

		return "";
	}
}
