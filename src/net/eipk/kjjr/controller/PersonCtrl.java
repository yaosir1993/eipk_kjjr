package net.eipk.kjjr.controller;

import net.eipk.core.mvc.Model;
import net.eipk.core.mvc.annotation.EipkController;
import net.eipk.core.mvc.annotation.EipkRequest;

@EipkController
public class PersonCtrl {
	@EipkRequest("/s/person/man")
	public String articleMan(Model m){

		//
		return "";
	}
}
