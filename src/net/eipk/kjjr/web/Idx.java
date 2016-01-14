package net.eipk.kjjr.web;

import java.util.List;
import java.util.Map;

import net.eipk.core.SysUtil;
import net.eipk.core.jpa.DB;
import net.eipk.core.mvc.Model;
import net.eipk.core.mvc.annotation.EipkController;
import net.eipk.core.mvc.annotation.EipkRequest;

@EipkController
public class Idx {
	@EipkRequest("/web/index")
	public String showIdx(Model m){

		String current_layer=m.getPar("cl");
		if(current_layer==null||current_layer.equals("")){
			current_layer="layer1";
		}
		m.setAttr("current_layer", current_layer);

		return "";
	}
	
	//前台页面
	@EipkRequest("/web/default")
	public String showdefaultIdx(Model m){

		String sql="";
		DB db=new DB();
		
		//zwgk 政务公开   1
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> zwgk_list=db.query(sql,1,0,3);	
		
		//bszn 办事指南  2
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> bszn_list=db.query(sql,2,0,3);	
				   
		//xzzq 下载专区 3
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> xzzq_list=db.query(sql,3,0,3);	
				
		
		//mxqy 明星企业 4
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> mxqy_list=db.query(sql,4,0,3);	
		
		//kjxw 科技新闻 5
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> kjxw_list=db.query(sql,5,0,3);	
				
		//zcfg 政策法规 6
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> zcfg_list=db.query(sql,6,0,3);			
		
		//zscq 知识产权 7
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> zscq_list=db.query(sql,7,0,3);	
				
		//kjjh 科技计划 8
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> kjjh_list=db.query(sql,8,0,3);	
			
		//cgjl 成果奖励 9
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> cgjl_list=db.query(sql,9,0,3);	
				
		//zjdy 专家大院 10
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> zjdy_list=db.query(sql,10,0,3);		
				
		//tzgg  通知公告 11		
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> tzgg_list=db.query(sql,11,0,3);
				
		//tsgp	特色果品 12
				sql="select mid,mtitle,mtext,insertdate,browse from h_message where cid = ? order by insertdate desc limit ?,?";
				List<Map<String,Object>> tsgp_list=db.query(sql,12,0,3);
		
		//count	计数 
				sql="select bcount from h_count where id = ?";
				Map<String,Object> count=db.querySingle(sql, 1);
				
		db.close();
		

		
		if(zwgk_list.size()>0){
			m.setAttr("zwgk_list", zwgk_list);
		}
		
		if(bszn_list.size()>0){
			m.setAttr("bszn_list", bszn_list);
		}
		
		if(xzzq_list.size()>0){
			m.setAttr("xzzq_list", xzzq_list);
		}
		
		if(mxqy_list.size()>0){
			m.setAttr("mxqy_list", mxqy_list);
		}
		
		if(kjxw_list.size()>0){
			m.setAttr("kjxw_list", kjxw_list);
		}
		
		if(zcfg_list.size()>0){
			m.setAttr("zcfg_list", zcfg_list);
		}
		
		if(zscq_list.size()>0){
			m.setAttr("zscq_list", zscq_list);
		}
		
		if(kjjh_list.size()>0){
			m.setAttr("kjjh_list", kjjh_list);
		}
		
		if(cgjl_list.size()>0){
			m.setAttr("cgjl_list", cgjl_list);
		}
		
		if(zjdy_list.size()>0){
			m.setAttr("zjdy_list", zjdy_list);
		}
		
		if(tzgg_list.size()>0){
			m.setAttr("tzgg_list", tzgg_list);
		}
		
		if(tsgp_list.size()>0){
			m.setAttr("tsgp_list", tsgp_list);
		}
		
		if(!count.isEmpty()){
			m.setAttr("count", count.get("bcount"));
		}else{
			m.setAttr("count", 1);
		}
		System.out.println("我出来了");
		
		return "";
	}
	
	
		//前台文章列表页面
		@EipkRequest("/web/list")
		public String listIdx(Model m){
			
			int cid=SysUtil.StrToInt(m.getPar("cid"));
			
			if(cid<1||cid>12){
				cid=1;
			}
			
			String sql="";
			DB db=new DB();
			sql="select count(*) as num from h_message where cid=?";
			int total=SysUtil.StrToInt(""+db.querySingle(sql,cid).get("num"));
			int pagth=SysUtil.StrToInt(m.getPar("pagth"));
			int start=SysUtil.getSplitPageStartId(total, 5, pagth);
			sql="select mid,mtitle,insertdate,mtext from h_message where cid=? order by insertdate desc limit ?,?";
			List<Map<String,Object>> message_list=db.query(sql,cid,start,5);		
			db.close();
			
			int i=0;
			for (Map<String, Object> list:message_list) {
				System.out.println(message_list.get(i).get("mtitle"));
				i++;
			}
			m.setAttr("split_page_str", SysUtil.getSplitPageStr(m.getRequest(), total,5,pagth,"&cid="+cid));
			m.setAttr("message_list", message_list);
			System.out.println("我来了，你看到了吗？");
			return "";
		}
	
		//前台显示详细信息页面
		@EipkRequest("/web/showmessage")	
		public String message_show(Model m){
	
			int mid=SysUtil.StrToInt(m.getPar("mid"));
	
			if(mid!=0){
				DB db=new DB();
				String sql="select * from h_message where mid=?";
				Map<String,Object> message=db.querySingle(sql,mid);
				db.close();
	
				m.setAttr("message", message);
	
			}
			m.setAttr("mid", mid);
			
			return "";
		}
		
	
	@EipkRequest("/web/article_list")
	public String article_list(Model m){

		int s_id=SysUtil.StrToInt(m.getPar("s_id"));
		if(s_id<1||s_id>2){
			s_id=1;
		}
		
		String sql="";
		DB db=new DB();
		sql="select count(*) as num from t_article where sectionId=?";
		int total=SysUtil.StrToInt(""+db.querySingle(sql,s_id).get("num"));
		int pagth=SysUtil.StrToInt(m.getPar("pagth"));
		int start=SysUtil.getSplitPageStartId(total, 5, pagth);
		sql="select id,pubUnit,pubDate,title,hits from t_article where sectionId=? order by pubDate desc limit ?,?";
		List<Map<String,Object>> article_list=db.query(sql,s_id,start,5);		
		db.close();
		
		m.setAttr("split_page_str", SysUtil.getSplitPageStr(m.getRequest(), total,5,pagth,"&s_id="+s_id));
		m.setAttr("article_list", article_list);

		return "";		
	}
	
	
	@EipkRequest("web/article_show")
	public String article_show(Model m){

		int a_id=SysUtil.StrToInt(m.getPar("a_id"));

		if(a_id!=0){
			DB db=new DB();
			String sql="select * from t_article where id=?";
			Map<String,Object> article=db.querySingle(sql,a_id);

			sql="select f.id,f.fileName,f.fileDiskName,f.fileSize from t_appendix a,t_file f where a.fileId=f.id and a.articleId=? order by a.id";
			List<Map<String,Object>> file_list=db.query(sql, a_id);

			db.close();

			m.setAttr("article", article);
			m.setAttr("file_list", file_list);
			if(file_list!=null&&file_list.size()>0){
				m.setAttr("file_title", "【本文附件】");
			}
		}
		m.setAttr("a_id", a_id);
		
		return "";
	}
}
