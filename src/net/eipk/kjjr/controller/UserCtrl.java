package net.eipk.kjjr.controller;

import java.util.HashMap;
import java.util.Map;

import net.eipk.core.jpa.DB;
import net.eipk.core.mvc.AjaxData;
import net.eipk.core.mvc.Model;
import net.eipk.core.mvc.RequestMethod;
import net.eipk.core.mvc.annotation.EipkController;
import net.eipk.core.mvc.annotation.EipkRequest;

@EipkController
public class UserCtrl {
	@EipkRequest("/s/user/u_password")
	public String editPassword(Model m){

		//
		return "";
	}
	@SuppressWarnings("unchecked")
	@EipkRequest(value="/s/user/u_password",method=RequestMethod.POST,ajax=true)
	public AjaxData editPasswordDo(Model m){
		Map<String,Object> result=new HashMap<String,Object>();
		
		String password=m.getPar("password");
		String repassword=m.getPar("repassword");
		
		if(password.equals(repassword)){
			Map<String,Object> user=(Map<String,Object>)m.getSessionPar("loginUser");
			DB db=new DB();
			String sql="update t_user set password=? where id=?";
			db.execute(sql, password,user.get("id"));			
			db.close();
			
			result.put("id", 1);
			result.put("msg", "修改成功。");
		}
		else{
			result.put("id", 2);
			result.put("msg", "修改失败。");
		}
		
		return new AjaxData(result);
	}
}
