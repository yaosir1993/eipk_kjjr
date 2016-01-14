package net.eipk.kjjr.controller;

import java.io.File;
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
public class FileCtrl {
	@EipkRequest("/s/file/man")
	public String fileMan(Model m){

		//
		return "";
	}
	@EipkRequest(value="/s/file/down")
	public String downloadFile(Model m){
		int file_id=SysUtil.StrToInt(m.getPar("id"));
		String sql="select fileDiskName from t_file where id=?";
		DB db=new DB();
		String real_name=(String)db.querySingle(sql, file_id).get("fileDiskName");
		db.close();
		return "/s/file.xdownload?real="+real_name;
	}
	@EipkRequest(value="/s/file/del",method=RequestMethod.POST,ajax=true)
	public AjaxData fileDelPost(Model m){
		Map<String,Object> result=new HashMap<String,Object>();

		int file_id=SysUtil.StrToInt(m.getPar("id"));
		String sql="delete from t_appendix where fileId=?";
		DB db=new DB();
		db.execute(sql, file_id);
		sql="select fileDiskName,fileType from t_file where id=?";
		Map<String,Object> file_info=db.querySingle(sql, file_id);
		String file_disk_name=(String)file_info.get("fileDiskName")+"."+file_info.get("fileType");
		sql="delete from t_file where id=?";
		db.execute(sql, file_id);
		db.close();

		String filePath = m.getRequest().getServletContext().getRealPath("/upload/");
		File del_file = new File(filePath+file_disk_name);
        if (del_file.exists()) {
        	del_file.delete();
        }

        result.put("success", 1);
		return new AjaxData(result);
	}
}
