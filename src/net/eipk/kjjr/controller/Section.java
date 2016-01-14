package net.eipk.kjjr.controller;

import java.util.List;
import java.util.Map;

import net.eipk.core.SysUtil;
import net.eipk.core.mvc.AjaxData;
import net.eipk.core.mvc.Model;
import net.eipk.core.mvc.RequestMethod;
import net.eipk.core.mvc.annotation.EipkController;
import net.eipk.core.mvc.annotation.EipkRequest;
import net.eipk.core.jpa.DB;

@EipkController
public class Section {
	@EipkRequest("/s/section/man")
	public String sectionMan(Model m){

		String sql="";
		DB db=new DB();
		sql="select id,sectionName from t_section order by id";
		List<Map<String,Object>> section_list=db.query(sql);
		db.close();

		m.setAttr("section_list", section_list);

		return "";
	}
	@EipkRequest(value="/s/section/edit",method=RequestMethod.GET)
	public String sectionEditGet(Model m){
		int section_id=SysUtil.StrToInt(m.getPar("section_id"));
		String section_name="";
		String section_type="";
		if(section_id!=0){
			DB db=new DB();
			String sql="select sectionName,sectionType from t_section where id=?";
			Map<String,Object> section=db.querySingle(sql,section_id);
			db.close();

			section_name=(String)section.get("sectionName");
			int section_type_value=(Integer)section.get("sectionType");
			if(section_type_value>0){
				section_type="checked";
			}
		}

		m.setAttr("section_id", section_id);
		m.setAttr("section_name", section_name);
		m.setAttr("section_type", section_type);

		return "";
	}
	@EipkRequest(value="/s/section/edit",method=RequestMethod.POST,ajax=true)
	public AjaxData sectionEditPost(Model m){
		int section_id=SysUtil.StrToInt(m.getPar("section_id"));
		String section_name=m.getPar("section_name");
		int section_type=SysUtil.StrToInt(m.getPar("section_type"));

		String sql="";
		DB db=new DB();
		if(section_id==0){
			sql="insert into t_section (sectionName,sectionType) values (?,?)";
			db.execute(sql, section_name,section_type);
		}
		else{
			sql="update t_section set sectionName=?,sectionType=? where id=?";
			db.execute(sql, section_name,section_type,section_id);
		}
		db.close();

		return null;
	}
	@EipkRequest(value="/s/section/del",method=RequestMethod.POST,ajax=true)
	public AjaxData sectionDelPost(Model m){

		int section_id=SysUtil.StrToInt(m.getPar("section_id"));
		String sql="delete from t_section where id=?";
		DB db=new DB();
		db.execute(sql, section_id);
		db.close();

		return null;
	}
}
