package net.eipk.kjjr.controller;

import net.eipk.core.mvc.Model;
import net.eipk.core.mvc.annotation.EipkController;
import net.eipk.core.mvc.annotation.EipkRequest;

@EipkController
public class Res {
	@EipkRequest("/res")
	public String getRes(Model m){
		return m.getPar("t");
	}

	@EipkRequest("/s/res")
	public String getRightRes(Model m){
		String t=m.getPar("t");

		return t;
	}
}
