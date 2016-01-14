package net.eipk.core.mvc;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.eipk.core.SysUtil;

@WebServlet("/*.x")
public class Dispather extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static protected final Logger log = Logger.getLogger("Eipk");

	@Inject
	MVCLoader eipkMvcLoader;

	public Dispather() {
		super();
		log.log(Level.INFO, "Eipk Dispather Servlet loading.......done.");
	}
	public void init() throws ServletException {
		log.log(Level.INFO, "Eipk Dispather init...loading resources....done");
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String Request_Url=request.getRequestURI().substring(request.getContextPath().length(), request.getRequestURI().length()-2);
		String Request_Method=request.getMethod().toUpperCase();
		RequestHandler handler=eipkMvcLoader.getRequestHandler(Request_Url,Request_Method);

		if(handler!=null){
			Method method=handler.getMethod();
			Object eipkControllerBean=eipkMvcLoader.getBean(handler.getEipkControllerClass());
			try {
				method.setAccessible(true);
				Object result=method.invoke(eipkControllerBean, new Model(request));
				log.log(Level.INFO, "Eipk Controller "+handler.getEipkControllerClass().getName()+"."+handler.getMethod().getName()+"() invoked,url:"+Request_Url);
				
				if(handler.isAjax()){
					System.out.println("我在调度器…是AJAX");
					AjaxData ajaxData;
					if(result==null){
						ajaxData=new AjaxData(new HashMap<String,Object>());
						System.out.println("我在调度器……result为空");
					}
					else{
						ajaxData=(AjaxData)result;
					}
					Object model=ajaxData.getModel();
					response.setContentType("application/json");
					response.setCharacterEncoding("utf-8");
					if(model!=null){
						String json=SysUtil.ObjToJson(model);
						byte[] buff = json.getBytes();
						response.setContentLength(buff.length);
						response.getOutputStream().write( buff);
						System.out.println("我在调度器……model不为空");
					}
				}
				else{
					System.out.println("我在调度器……不是ajax");
					String view=(String)result;
					if(view.indexOf(".x")>0){
						response.sendRedirect(request.getContextPath()+view);
						System.out.println("我有.x我跳转了");
					}
					else{
						response.setContentType("text/html");
						response.setCharacterEncoding("utf-8");
						Renderer renderer=new Renderer(response,request,view);
						
						renderer.render();
						System.out.println("我没有.x我转向其他区域");
					}
				}
			} catch (Exception e){
				System.out.println("我怎么到了这里");
				log.log(Level.INFO, "Eipk Controller "+handler.getEipkControllerClass().getName()+"."+handler.getMethod().getName()+"() invoke failed,url:"+Request_Url);
				System.out.println("出错了小伙子");
				e.printStackTrace();
			}
		}
		else{
			log.log(Level.INFO, "未找到匹配的控制器方法["+Request_Url+"]");
			response.sendRedirect(request.getContextPath()+"/err.x?id=1");
		}
	}

	public void destroy() {
		super.destroy();
		log.log(Level.INFO, "Eipk Dispather Servlet destroy.......done");
	}
}
