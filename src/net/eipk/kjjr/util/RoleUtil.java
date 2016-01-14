package net.eipk.kjjr.util;

import java.util.Map;

import net.eipk.core.jpa.DB;

public class RoleUtil {
	public static Map<String,Object> getRoleByUserId(int userId){
		String sql="select r.id,r.roleName,r.roleDescription,r.validity from t_person p,t_role r where p.roleId=r.id and p.userId=?";
		DB db=new DB();
		Map<String,Object> rtn=db.querySingle(sql,userId);
		db.close();
		return rtn;
	}
}
