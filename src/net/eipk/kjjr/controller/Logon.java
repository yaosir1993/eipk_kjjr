package net.eipk.kjjr.controller;

import java.util.HashMap;
import java.util.Map;

import net.eipk.core.SysUtil;
import net.eipk.core.jpa.DB;
import net.eipk.core.mvc.AjaxData;
import net.eipk.core.mvc.Model;
import net.eipk.core.mvc.RequestMethod;
import net.eipk.core.mvc.annotation.EipkController;
import net.eipk.core.mvc.annotation.EipkRequest;

@EipkController
public class Logon {

	@EipkRequest(value="/login",method=RequestMethod.POST,ajax=true)
	public AjaxData checkLogin(Model m){
		String rand_img_str = (String)m.getSessionPar("rand_img_str");
		Map<String,Object> result=new HashMap<String,Object>();

		if(rand_img_str.equals(m.getPar("check_code"))){
			String sql="select * from t_user where userCode=? and password=?";
			DB db=new DB();
			Map<String,Object> user=db.querySingle(sql,m.getPar("username"),m.getPar("password"));
			if(user!=null){				
				m.setSessionPar("loginUser", user);
				sql="update t_user set lastLoginIp=?,lastLoginTime=? where userCode=?";
				db.execute(sql, SysUtil.getIpAddr(m.getRequest()),SysUtil.getNowTime(),user.get("userCode").toString());
				sql="insert into t_log (runner,event,run_time,ip) values (?,?,?,?)";
				db.execute(sql, m.getPar("username"),"登录系统",SysUtil.getNowTime(),SysUtil.getIpAddr(m.getRequest()));
				
				result.put("id", 1);
				result.put("msg", "登陆成功。");				
			}
			else{
				result.put("id", -2);
				result.put("msg", "用户名或密码错误。");
			}
			db.close();
		}
		else{
			result.put("id", -1);
			result.put("msg", "验证码不正确。");
		}
		return new AjaxData(result);
	}
	@EipkRequest("/logout")
	public String logout(Model m){
		m.removeSessionPar("loginUser");
		m.setAttr("error_msg", "");

		return "/web/index.x";
	}
}
