package net.eipk.core.mvc;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Renderer {
	static protected final Logger log = Logger.getLogger("Eipk");
	Model m;
	HttpServletRequest request;
	HttpServletResponse response;
	String view;

	public Renderer(HttpServletResponse response,HttpServletRequest request,String view) {
		this.request=request;
		this.response=response;
		this.m=new Model(request);
		m.setAttr("DocumentRoot", this.request.getContextPath());
		m.setAttr("AppName", "灵宝科技信息网");
		m.setAttr("SysVersion", "V0.1");
		if(view.equals("")){
			this.view=request.getRequestURI().substring(request.getContextPath().length()+1, request.getRequestURI().length()-2);
		}
		else{
			this.view=view;
		}
	}
	public void render() {
		try{
			Template t=new Template(request);
			t.getTemplate(view);
			t.write(m);
			t.out(response);
		}catch(IOException e){
			log.log(Level.INFO, "Eipk MVC Renderer failed.");
		}
	}
}