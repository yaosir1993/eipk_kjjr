package net.eipk.kjjr.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import net.eipk.core.SysUtil;
import net.eipk.core.mvc.AjaxData;
import net.eipk.core.mvc.Model;
import net.eipk.core.mvc.RequestMethod;
import net.eipk.core.mvc.annotation.EipkController;
import net.eipk.core.mvc.annotation.EipkRequest;
import net.eipk.core.jpa.DB;

@EipkController
public class Article {
	@EipkRequest("/s/article/man")
	public String articleMan(Model m){

		String search_where="";
		if(SysUtil.StrToInt(m.getPar("clear"))==0){
			search_where=m.getSessionPar("search_where")!=null?(String)m.getSessionPar("search_where"):"";
		}
		else{
			int search_section=SysUtil.StrToInt(m.getPar("search_section"));
			String search_article_title=m.getPar("search_article_title");
			if(search_section!=0){
				search_where+=" and sectionId="+search_section;
			}
			if(!search_article_title.equals("")){
				search_where+=" and title like '%"+search_article_title+"%'";
			}
		}
		m.setSessionPar("search_where", search_where);

		String sql="";

		DB db=new DB();

		sql="select id,sectionName from t_section order by id";
		List<Map<String,Object>> section_list=db.query(sql);

		sql="select count(*) as num from t_article a,t_section s where a.sectionId=s.id "+search_where;
		int total=SysUtil.StrToInt(""+db.querySingle(sql).get("num"));
		int pagth=SysUtil.StrToInt(m.getPar("pagth"));
		int start=SysUtil.getSplitPageStartId(total, SysUtil.PAGE_SIZE, pagth);
		sql="select a.id,a.pubDate,s.sectionName,a.title,a.hits from t_article a,t_section s where a.sectionId=s.id "+search_where+" order by pubDate desc limit ?,?";
		List<Map<String,Object>> article_list=db.query(sql,start,SysUtil.PAGE_SIZE);
		
		db.close();
		
		m.setAttr("split_page_str", SysUtil.getSplitPageStr(m.getRequest(), total,SysUtil.PAGE_SIZE,pagth));
		m.setAttr("section_list", section_list);
		m.setAttr("article_list", article_list);

		return "";
	}
	@EipkRequest("/s/article/show")
	public String articleShowGet(Model m){
		int article_id=SysUtil.StrToInt(m.getPar("article_id"));

		if(article_id!=0){
			DB db=new DB();
			String sql="select s.sectionName,a.pubUnit,a.pubDate,a.docId,a.title,a.content from t_article a,t_section s where a.sectionId=s.id and a.id=?";
			Map<String,Object> article=db.querySingle(sql,article_id);

			sql="select f.id,f.fileName,f.fileSize from t_appendix a,t_file f where a.fileId=f.id and a.articleId=? order by a.id";
			List<Map<String,Object>> file_list=db.query(sql, article_id);

			db.close();

			m.setAttr("article", article);
			m.setAttr("file_list", file_list);
		}
		else{
			m.setAttr("sectionName", "");
			m.setAttr("pubUnit", "");
			m.setAttr("pubDate", "");
			m.setAttr("docId", "");
			m.setAttr("title", "");
			m.setAttr("content", "");
		}
		m.setAttr("article_id", article_id);
		return "";
	}
	@EipkRequest("/s/article/edit")
	public String articleEditGet(Model m){
		int article_id=SysUtil.StrToInt(m.getPar("article_id"));
		DB db=new DB();
		String sql="select id as section_id,sectionName from t_section order by id";
		List<Map<String,Object>> section_list=db.query(sql);
		if(article_id>0){
			sql="select id,pubUnit,pubDate,docId,sectionId,title,content from t_article where id=?";
			Map<String,Object> article=db.querySingle(sql,article_id);
			m.setAttr("article", article);
		}
		else{
			m.setAttr("id", 0);
			m.setAttr("pubUnit", "");
			m.setAttr("pubDate", new Date());
			m.setAttr("docId", "");
			m.setAttr("sectionId", 0);
			m.setAttr("title", "");
			m.setAttr("content", "");
		}
		db.close();
		m.setAttr("section_list", section_list);
		return "";
	}
	@SuppressWarnings("unchecked")
	@EipkRequest(value="/s/article/edit",method=RequestMethod.POST,ajax=true)
	public AjaxData articleEditPost(Model m){
		Map<String,Object> user=(Map<String,Object>)m.getSessionPar("loginUser");

		int article_id=SysUtil.StrToInt(m.getPar("article_id"));
		int section_id=SysUtil.StrToInt(m.getPar("section_id"));
		String pub_unit=m.getPar("pub_unit");
		String pub_date=m.getPar("pub_date");
		String doc_id=m.getPar("doc_id");
		String title=m.getPar("title");
		String content=m.getPar("content");

		String sql="";
		DB db=new DB();
		if(article_id==0){
			sql="insert into t_article (pubUnit,pubDate,docId,sectionId,title,hits,userId,content) values (?,?,?,?,?,0,?,?)";
			db.execute(sql, pub_unit,pub_date,doc_id,section_id,title,(Integer)user.get("id"),content);
		}
		else{
			sql="update t_article set pubUnit=?,pubDate=?,docId=?,sectionId=?,title=?,content=? where id=?";
			db.execute(sql, pub_unit,pub_date,doc_id,section_id,title,content,article_id);
		}
		db.close();

		return null;
	}
	@EipkRequest(value="/s/article/del",method=RequestMethod.POST,ajax=true)
	public AjaxData articleDelPost(Model m){

		int article_id=SysUtil.StrToInt(m.getPar("article_id"));
		String sql="delete from t_article where id=?";
		DB db=new DB();
		db.execute(sql, article_id);
		db.close();

		return null;
	}
	@EipkRequest(value="/s/article/upload",method=RequestMethod.POST,ajax=true)
	public AjaxData articleUploadFile(Model m){
		Map<String,Object> result=new HashMap<String,Object>();

		String savePath = m.getRequest().getServletContext().getRealPath("/upload/");
        File saveDirFile = new File(savePath);
        if (!saveDirFile.exists()) {
        	saveDirFile.mkdirs();
        }
        FileItemFactory fac = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(fac);
        upload.setHeaderEncoding("utf-8");

		List<?> fileList = null;
        try {
        	fileList = upload.parseRequest(m.getRequest());
        } catch (FileUploadException e) {
        	e.printStackTrace();
        	return null;
        }
        Iterator<?> par_itr=fileList.iterator(),file_itr = fileList.iterator();
        while (par_itr.hasNext()) {
        	FileItem item = (FileItem) par_itr.next();
        	if (item.isFormField()) {
        		try {
	    			String par_name=item.getFieldName();
	    			BufferedReader br;
					br = new BufferedReader( new InputStreamReader(item.getInputStream()));
					if(par_name!=null){
	    				result.put(par_name, br.readLine());
	    			}
	    			br.close();
        		} catch (IOException e) {
					e.printStackTrace();
				}
        	}
        }

        while (file_itr.hasNext()) {
        	FileItem item = (FileItem) file_itr.next();
        	String fileName = item.getName();
        	if (!item.isFormField()) {
        		try {
        			int index=fileName.lastIndexOf("\\");
        			if(index!=-1) {
        				fileName=fileName.substring(index+1);
        			}
        			result.put("fileName", fileName);
        			result.put("fileType", fileName.substring(fileName.lastIndexOf(".")+1));
        			String file_disk_name=java.util.UUID.randomUUID().toString();
        			fileName=file_disk_name+fileName.substring(fileName.lastIndexOf("."));
        			File uploadedFile = new File(savePath, fileName);
        			item.write(uploadedFile);
        			result.put("fileSize", SysUtil.FileSizeStr(item.getSize()));
        			result.put("fileDiskName", file_disk_name);
        		} catch (Exception e) {
        			e.printStackTrace();
        		}
        	}
        }
        DB db=new DB();
        String sql="insert into t_file (fileName,fileDiskName,fileSize,fileType) values (?,?,?,?)";
        int file_id=db.execute(sql, result.get("fileName"),result.get("fileDiskName"),result.get("fileSize"),result.get("fileType"));
        sql="insert into t_appendix (articleId,fileId) values (?,?)";
        db.execute(sql, SysUtil.StrToInt(""+result.get("article_id")),file_id);
        db.close();

		return new AjaxData(result);
	}
}
