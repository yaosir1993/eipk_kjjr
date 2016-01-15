<!DOCTYPE HTML>
<include 
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<title>#{AppName}</title>
<link href="#{DocumentRoot}/web/css/style2.css" rel="stylesheet" type="text/css" />
<script>
function syslogin(obj,obj1,obj2)
{
	var flag=1;
	
	if(obj1.value=='')
	{
		alert("用户名不能为空！");
		flag=0;
	}
	if(obj2.value=='')
	{
		alert("密码不能为空！");
		flag=0;
	}
	if(flag==1)
	{
		location.href="http://manage.hnkjt.gov.cn/login.eiip?submit=submit&loginUser="+obj1.value+"&userPassword="+obj2.value;
	}
}

function lr()
{
	//location.href="wszx.html";
	window.open("wszx.html");
}
</script>
<SCRIPT language=javascript author=luxiaoqing><!--
function initArray(){for(i=0;i<initArray.arguments.length;i++)
this[i]=initArray.arguments[i];}var isnMonths=new initArray("1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月");var isnDays=new initArray("星期日","星期一","星期二","星期三","星期四","星期五","星期六","星期日");today=new Date();hrs=today.getHours();min=today.getMinutes();sec=today.getSeconds();clckh=""+((hrs>12)?hrs-12:hrs);
clckm=((min<10)?"0":"")+min;clcks=((sec<10)?"0":"")+sec;clck=(hrs>=12)?"下午":"上午";var stnr="";var ns="0123456789";var a="";

//-->

</SCRIPT>

</head>
<body leftmargin=0 topmargin=0>

<div align="center">
<table width=778 border=0 cellspacing=0 cellpadding=0>
<tr>
<td><div><embed src="#{DocumentRoot}/web/image/sis.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="778" height="113"></embed></div></td>
</tr>
</table>
<table border=0 background="#{DocumentRoot}/web/image/dhbg.jpg" width=778 cellspacing=0 cellpadding=0>
<tr height=39><td>
<div align=center><font color="#FFFFFF">
<a href="default.x"><font color="#FFFFFF">主页&nbsp;</font></a>|
<a href="list.x?cid=1"><font color="#FFFFFF">政务公开&nbsp;</font></a>|
<a href="list.x?cid=2"><font color="#FFFFFF">&nbsp;办事指南&nbsp;</font></a>|
<a href="list.x?cid=5"><font color="#FFFFFF">&nbsp;科技动态&nbsp;</font></a>|
<a href="list.x?cid=6"><font color="#FFFFFF">&nbsp;政策法规&nbsp;</font></a>|
<a href="list.x?cid=8"><font color="#FFFFFF">&nbsp;科技计划&nbsp;</font></a>|
<a href="list.x?cid=7"><font color="#FFFFFF">&nbsp;知识产权&nbsp;</font></a>|
<a href="list.x?cid=13"><font color="#FFFFFF">&nbsp;高新技术&nbsp;</font></a>|
<a href="list.x?cid=10"><font color="#FFFFFF">&nbsp;专家大院&nbsp;</font></a>|
<a href="list.x?cid=12"><font color="#FFFFFF">&nbsp;SOD、POD果品&nbsp;</font></a>|
<a href="list.x?cid=3"><font color="#FFFFFF">&nbsp;下载专区&nbsp;</font></a>|
<font color="#FFFFFF">&nbsp;在线咨询</font></font>
</div>
</td></tr>
</table>

</div>



<div align=center>


<div id="floater" style="position:absolute; z-index:1"> 

<img src="#{DocumentRoot}/web/image/top001.jpg" border="0">
</div>

<table width=778 border=0 cellspacing=0 cellpadding=0>
<tr>



<td width=187><div align=center>
  <table border=0 cellspacing=0 cellpadding=0 width=187>
<tr><td width=11 background=#{DocumentRoot}/web/image/left01.jpg><div align=center></div></td>


<td width=176><div align=center>
  <table width="176" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><div align="center"><img src="#{DocumentRoot}/web/image/email.gif" width="162" height="30"></div></td>
    </tr>
    <tr>
      <td><div align="center">
        <table width="162" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="85" bgcolor="#F7F7F7"><div align="center">
			<form name="form1" method="post" action="login.x" onSubmit="return(login());">
				<table border="0" cellpadding="0" cellspacing="0">
					<tr><td height="25">用户名<input name="username"  width="20" type="text" value="" size="11" class="inputTextCss"></td></tr>
					<tr><td height="25">密&nbsp;&nbsp;&nbsp;&nbsp;码<input name="password"  width="20" type="password" value="" size="12" class="inputTextCss"></td></tr>
					<tr>
						<td height="25" align="center"><input name="submit" type="button" value="登陆" class="inputButtonCss"onclick="javascript:syslogin(document.all.loginform,document.all.username,document.all.password);">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="submit" type="reset" value="重填" class="inputButtonCss"></td>
					</tr>
				</table>
			</form>
			</div></td>
          </tr>
        </table>
      </div></td>
    </tr>
  </table>

<table width="156" border="0" cellspacing="0" cellpadding="0">
    <tr>
	<td><div align="center"><img src="#{DocumentRoot}/web/image/left011.jpg" width="174" height="29"></div></td>
</tr>
    <tr>
      <td height="100"><div align="center">
	  	<table border="0" cellpadding="0" cellspacing="0">
				#Begin{zwgk_list}
			<tr>
				<td height="20"><div align="center"><a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td>
			</tr>
				#End{zwgk_list}
			<tr><td height="10" width="174"><div align="right"><a href="list.x?cid=1"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td></tr>
		</table>
	  </div></td>
    </tr>
</table>

<table width="176" border="0" cellspacing="0" cellpadding="0">
    <tr>
	<td><div align="center"><img src="#{DocumentRoot}/web/image/left021.jpg" width="174" height="29"></div></td>
</tr>
    <tr>
      <td height="120"><div align="center">
	  	<table border="0" cellpadding="0" cellspacing="0">
	  		#Begin{bszn_list}
			<tr><td height="20"><div align="center"><a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td></tr>
			#End{bszn_list}
			<tr><td height="15" width="174"><div align="right"><a href="list.x?cid=2"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td></tr>
		</table>
	  </div></td>
    </tr>
</table>



<table width="176" border="0" cellspacing="0" cellpadding="0">
    <tr>
	<td><div align="center"><img src="#{DocumentRoot}/web/image/left31.jpg" width="174" height="29"></div></td>
</tr>
    <tr>
      <td height="100"><div align="center">
	  	<table border="0" cellpadding="0" cellspacing="0">
						#Begin{xzzq_list}
						<tr><td height="20"><div align="center"><a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td></tr>
						#End{xzzq_list}
						<tr><td height="15" width="174"><div align="right"><a href="list.x?cid=3"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td></tr>
					</table>
	  </div></td>
    </tr>
</table>



<table width="176" border="0" cellspacing="0" cellpadding="0">
    <tr>
	<td><div align="center"><img src="#{DocumentRoot}/web/image/left031.jpg" width="174" height="29"></div></td>
</tr>
<td height="100"><div align="center">
	<table border="0" cellpadding="0" cellspacing="0">
    					#Begin{mxqy_list}
						<tr><td height="20"><div align="center"><a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td></tr>
						#End{mxqy_list}
						<tr><td height="15" width="174"><div align="right"><a href="list.x?cid=4"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td></tr>
	</table>
						
</div></td>
</table>



<table width="156" border="0" cellspacing="0" cellpadding="0">
    <tr>
	<td><div align="center"><img src="#{DocumentRoot}/web/image/left041.jpg" width="174" height="29"></div></td>
</tr>
    <tr>
      <td height="128"><div align="center">
	  	<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="85" height="50"><div align="center"><a href="list.x?cid=14" target="_blank">项目转让</a></div></td>
				<td width="85" height="50"><div align="center"><a href="list.x?cid=15" target="_blank">技术需求</a></div></td>
			</tr>
			<tr>
				<td width="85" height="20"><div align="center"><a href="list.x?cid=16" target="_blank">难题招标</a></div></td>
				<td width="85" height="20"><div align="center"><a href="list.x?cid=17" target="_blank">科技招商</a></div></td>
			</tr>
			<tr>
				<td width="85" height="50"><div align="center"><a href="list.x?cid=18" target="_blank">人才交流</a></div></td>
				<td width="85" height="50"><div align="center"><a href="list.x?cid=19" target="_blank">国际合作</a></div></td>
			</tr>
		</table>
	  </div></td>
    </tr>
</table>
</div></td></tr>
</table>
</div></td>


<td><div align=center>
  <table border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="30"><div align="left">
			<table border="0" cellspacing="0" cellpadding="0">
			<form name="znjs" method="post" action="list.eiip?cid=18">
				<tr>
					<td width="390" height="30" align="center" valign="middle"><div align="center">
					
					站内检索： 
					  <input name="lbjs" type="text" size="20" value="">
					  &nbsp;&nbsp;
					  <input type="submit" name="Submit" value="提交">
					  
					
					</div></td>
					<td width="193" height="30" bgcolor="#6699FF"><div align="center">
					<SCRIPT language=javascript><!--
					function getFullYear(d){//d is a date object
					yr=d.getYear();if(yr<1000)
					yr+=1900;return yr;}document.write("<table>");//don't delete this line
					
					/* 每一段代表一种风格,不需要的删除即可*/
					
					document.write("<TR><TD>"+getFullYear(today)+"年"+"&nbsp;"+isnMonths[today.getMonth()]+""+today.getDate()+"日&nbsp;"+isnDays[today.getDay()]
					
					);document.write("</table>"); // don't delete this line
					//-->
					</SCRIPT>
					</div></td>
					
				</tr>
				</form>
			</table>
	  </div></td>
    </tr>
    <tr>
      <td><div align="center">
        <table width="580" border="0" cellspacing="0" cellpadding="0">
          <tr>
            
			
			<td width="379" colspan="2"><div align="center">
				<table width="389" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td colspan="3"><div align="center"><img src="#{DocumentRoot}/web/image/center01.jpg"></div></td>
                  </tr>
                  <tr>
                    <td width="1" background="#{DocumentRoot}/web/image/center02.jpg"><div align="center"></div></td>
                    <td width="167" height="167" rowspan="3"><div align="center">
					<embed src="image/sis1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="167" height="167"></embed>
					</div></td>
                    <td width="221" height="25"><div align="left"><img src="#{DocumentRoot}/web/image/center03.jpg" width="220" height="25"></div></td>
                  </tr>
                  <tr>
                    <td width="1" background="#{DocumentRoot}/web/image/center02.jpg"><div align="center"></div></td>
                    <td width="221" height="110"><div align="center">
							<table border="0" cellpadding="0" cellspacing="0">
								#Begin{kjxw_list}
								<tr><td height="22" width="221"><div align="left">&nbsp;<img src="#{DocumentRoot}/web/image/center04.jpg">&nbsp;<a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td></tr>
								#End{kjxw_list}
							</table>
					</div></td>
                  </tr>
				  <tr>
                    <td width="1" background="#{DocumentRoot}/web/image/center02.jpg"><div align="center"></div></td>
                    <td width="221" height="32"><div align="right"><a href="list.x?cid=5"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td>
                  </tr>
				  
				   <tr>
                    <td width="1" height="45" background="#{DocumentRoot}/web/image/center02.jpg"><div align="center"></div></td>
                    <td colspan="2"><div align="center"><img src="#{DocumentRoot}/web/image/center06.jpg"></div></td>
                  </tr>
				  <tr>
                    <td width="1" background="#{DocumentRoot}/web/image/center02.jpg"><div align="center"></div></td>
                    <td width="388" colspan="2" height="88"><div align="center">
                      <table width="388" border="0" cellspacing="0" cellpadding="0" height="90">
					  	#Begin{zcfg_list}
                        <tr>
                          <td width="38" height="24"><div align="center"><img src="#{DocumentRoot}/web/image/center07.jpg"></div></td>
                          <td width="270" height="24"><div align="left"><a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td>
						  <td width="80" height="24"><div align="left">#Date{insertdate,yyyy-MM-dd}</div>                        </tr>
						#End{zcfg_list}
                      </table>
                    </div></td>
                  </tr>
				  <tr>
                    <td width="1" height="12" background="#{DocumentRoot}/web/image/center02.jpg"><div align="center"></div></td>
                    <td colspan="2" height="27"><div align="right"><a href="list.x?cid=6" target="_blank"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td>
                  </tr>
				  <tr>
                    <td width="1" height="45" background="#{DocumentRoot}/web/image/center02.jpg"><div align="center"></div></td>
                    <td colspan="2"><div align="center"><img src="#{DocumentRoot}/web/image/center09.jpg" width="389" height="33"></div></td>
                  </tr>
				  <tr>
                    <td width="1" background="#{DocumentRoot}/web/image/center02.jpg"><div align="center"></div></td>
                    <td width="388" colspan="2" height="88">
							<table width="388" height="88" border="0" cellspacing="0" cellpadding="0">
								#Begin{zscq_list}
								<tr>
								  <td width="38" height="22"><div align="center"><img src="#{DocumentRoot}/web/image/center07.jpg"> </div></td>
								  <td width="270" height="22"><div align="left"><a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td>
								  <td width="80" height="22"><div align="center">#Date{insertdate,yyyy-MM-dd}</div></td>
								</tr>
								#End{zscq_list}
							</table>					</td>
					<tr>
                    <td width="1" height="32" background="#{DocumentRoot}/web/image/center02.jpg"><div align="center"></div></td>
                    <td colspan="2" height="32"><div align="right"><a href="list.x?cid=7" target="_blank"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td>
                  </tr>
				  <tr>
                    <td width="1" height="45" background="#{DocumentRoot}/web/image/center02.jpg"><div align="center"></div></td>
                    <td width="388" colspan="2"><div align="center">
						  <table width="388" border="0" cellspacing="0" cellpadding="0">
						  	<tr>
								<td colspan="2" width="189" height="33"><div align="center"><img src="#{DocumentRoot}/web/image/center11.jpg"></div></td>
								<td colspan="3" width="200" height="33"><div align="center"><img src="#{DocumentRoot}/web/image/center12.jpg"></div></td>
							</tr>
							<tr>
								<td width="2" background="#{DocumentRoot}/web/image/center19.jpg"><div align="center"></div></td>
								<td width="187" height="90"><div align="center">
									<table border="0" cellpadding="0" cellspacing="0" width="187" height="92">
										#Begin{kjjh_list}
										<tr><td width="186"><div align="left">&nbsp;<a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td></tr>
										#End{kjjh_list}
										<tr><td height="15"><div align="right"><a href="list.x?cid=8"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td></tr>
									</table>
								</div></td>
								<td width="12" background="#{DocumentRoot}/web/image/center13.jpg"><div align="center"></div></td>
								<td width="186"><div align="center">
									<table border="0" cellpadding="0" cellspacing="0" width="187" height="92">
										#Begin{cgjl_list}
										<tr><td><div align="left">&nbsp;<a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td></tr>
										#End{cgjl_list}
										<tr><td height="15"><div align="right"><a href="list.x?cid=9"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td></tr>
									</table>
								</div></td>
								<td width="2" background="#{DocumentRoot}/web/image/center18.jpg"><div align="center"></div></td>
							</tr>
							<tr>
								<td colspan="2" width="189" height="33"><div align="center"><img src="#{DocumentRoot}/web/image/center14.jpg" width="189" height="36"></div></td>
								<td colspan="3" width="200" height="33"><div align="center"><img src="#{DocumentRoot}/web/image/center15.jpg" width="200" height="36"></div></td>
							</tr>
							<tr>
								<td width="2" background="#{DocumentRoot}/web/image/center19.jpg"><div align="center"></div></td>
								<td width="187" height="90"><div align="center">
									<table border="0" cellpadding="0" cellspacing="0" width="187" height="100">
										#Begin{zjdy_list}
										<tr><td><div align="left">&nbsp;<a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td></tr>
										#End{zjdy_list}
										<tr><td height="15"><div align="right"><a href="list.x?cid=10"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td></tr>
									</table>
								</div></td>
								<td width="12" background="#{DocumentRoot}/web/image/center13.jpg"><div align="center"></div></td>
								<td width="186" ><div align="center">
										<table border="0" cellpadding="0" cellspacing="0" width="187" height="100">
										<!--  -->
										<tr><td><div align="left">&nbsp;<a href="" target="_blank">网站制作</a></div></td></tr>
										
										<tr><td><div align="left">&nbsp;<a href="" target="_blank">阳平镇的地理坐标</a></div></td></tr>
										
										<tr><td><div align="left">&nbsp;<a href="" target="_blank">供应UPS电源</a></div></td></tr>
										
										<tr><td><div align="left">&nbsp;<a href="" target="_blank">寻找灵科字(2004)16号文</a></div></td></tr>
										<!--  -->
										<tr><td height="15"><div align="right"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></div></td></tr>
									</table>
								</div></td>
								<td width="2" background="#{DocumentRoot}/web/image/center18.jpg"><div align="center"></div></td>
							</tr>
							<tr>
								<td colspan="2" width="189" height="11"><div align="center"><img src="#{DocumentRoot}/web/image/center16.jpg" width="189" height="11"></div></td>
								<td colspan="3" width="200" height="11"><div align="center"><img src="#{DocumentRoot}/web/image/center17.jpg" width="200" height="11"></div></td>
							</tr>
						  </table>
					</div></td>
                  </tr>
                </table>
			</div></td>
			
			
            <td width="191"><div align="center">
              <table width="191" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td colspan="3"><div align="center"><img src="#{DocumentRoot}/web/image/tzgg01.jpg"></div></td>
                  </tr>
                <tr>
                  <td width="3" background="#{DocumentRoot}/web/image/tzgg02.jpg">&nbsp;</td>
                  <td width="179" height="80"><div align="center">
				  	<table border="0" cellpadding="0" cellspacing="0">
						#Begin{tzgg_list}
						<tr><td height="20" width="178"><div align="center">&nbsp;<a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td></tr>
						#End{tzgg_list}
						<tr><td height="15" width="176"><div align="right"><a href="list.x?cid=11"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td></tr>
					</table>
				  </div></td>
                  <td width="9" background="#{DocumentRoot}/web/image/tzgg03.jpg">&nbsp;</td>
                </tr>
				
				<tr>
                  <td colspan="3"><div align="center"><img src="#{DocumentRoot}/web/image/tzgg04.jpg"></div></td>
                  </tr>
                <tr>
                  <td width="3" background="#{DocumentRoot}/web/image/tzgg02.jpg">&nbsp;</td>
                  <td width="179" height="80"><div align="center">
				  		<table border="0" cellpadding="0" cellspacing="0" height="80">
										#Begin{tsgp_list}
										<tr>
										<td width="178" height="20"><div align="center">&nbsp;<a href="showmessage.x?mid=#{mid}" target="_blank">#{mtitle}</a></div></td>
										</tr>
										#End{tsgp_list}
										<tr><td height="15" width="176"><div align="right"><a href="list.x?cid=12"><img src="#{DocumentRoot}/web/image/center08.jpg" border="0"></a></div></td></tr>
									</table>
				  </div></td>
                  <td width="9" background="#{DocumentRoot}/web/image/tzgg03.jpg">&nbsp;</td>
                </tr>
				
				<tr>
                  <td colspan="3"><div align="center"><img src="#{DocumentRoot}/web/image/tzgg05.jpg"></div></td>
                  </tr>
                <tr>
                  <td width="3" background="#{DocumentRoot}/web/image/tzgg02.jpg">&nbsp;</td>
                  <td width="179" height="80"><div align="center">
				  	<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="85"><div align="center"><a href="list.x?cid=20" target="_blank">科技制作</a></div></td>
							<td width="85"><div align="center"><a href="list.x?cid=21" target="_blank">生活百科</a></div></td>
						</tr>
						<tr>
							<td width="85"><div align="center"><a href="kpzslist.eiip?item=''">&nbsp;</a></div></td>
							<td width="85"><div align="center"><a href="kpzslist.eiip?item=''">&nbsp;</a></div></td>
						</tr>
						<tr>
							<td width="85"><div align="center"><a href="list.x?cid=22" target="_blank">医疗保健</a></div></td>
							<td width="85"><div align="center"><a href="list.x?cid=23" target="_blank">电脑时代</a></div></td>
						</tr>
					</table>
				  </div></td>
                  <td width="9" background="#{DocumentRoot}/web/image/tzgg03.jpg">&nbsp;</td>
                </tr>
				
				<tr>
                  <td colspan="3"><div align="center"><img src="#{DocumentRoot}/web/image/tzgg06.jpg"></div></td>
                  </tr>
                <tr>
                  <td width="3" background="#{DocumentRoot}/web/image/tzgg02.jpg">&nbsp;</td>
                  <td width="179" height="80"><div align="center">
				  	<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=24" target="_blank">养殖技术</a></div></td>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=25" target="_blank">种植技术</a></div></td>
						</tr>
						<tr>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=26" target="_blank">致富信息</a></div></td>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=27" target="_blank">储藏技术</a></div></td>
						</tr>
						<tr>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=28" target="_blank">农产品加工</a></div></td>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=29" target="_blank">技能培训</a></div></td>
						</tr>
					</table>
				  </div></td>
                  <td width="9" background="#{DocumentRoot}/web/image/tzgg03.jpg">&nbsp;</td>
                </tr>
				
				<tr>
                  <td colspan="3" width="191" height="43"><div align="center"><img src="#{DocumentRoot}/web/image/tzgg071.jpg"></div></td>
                  </tr>
                <tr>
                  <td width="3" background="#{DocumentRoot}/web/image/tzgg02.jpg">&nbsp;</td>
                  <td width="187" height="80"><div align="center">
				  	<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=30" target="_blank">市况简介</a></div></td>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=31" target="_blank">优势资源</a></div></td>
						</tr>
						<tr>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=32" target="_blank">景点景区</a></div></td>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=33" target="_blank">土特产品</a></div></td>
						</tr>
						<tr>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=34" target="_blank">特色工业</a></div></td>
							<td width="85" height="23"><div align="center"><a href="list.x?cid=35" target="_blank">特色农业</a></div></td>
						</tr>
					</table>
				  </div></td>
                  <td width="1" background="#{DocumentRoot}/web/image/tzgg03.jpg">&nbsp;</td>
                </tr>
				
				<tr>
                  <td colspan="3" width="191" height="43"><div align="center"><img src="#{DocumentRoot}/web/image/tzgg081.jpg"></div></td>
                  </tr>
                <tr>
                  <td width="3" background="#{DocumentRoot}/web/image/tzgg02.jpg">&nbsp;</td>
                  <td width="200" height="130"><div align="center">
				  <form name="form2" method="post" action="">
                    <table border="0" height="114">
                      <tr>
                        <td width="180" height="19" colspan="2"><div align="left"><font color="#0000FF">你进入本网站是因为：</font></div></td>
                      </tr>
                      <tr>
                        <td width="90"><div align="left"><input name="diaocha" type="radio" checked="checked" value="1">找项目</div></td>
                        <td width="90"><div align="left"><input name="diaocha" type="radio" value="2">查资料</div></td>
                      </tr>
                      <tr>
                        <td width="90" height="24"><div align="left"><input name="diaocha" type="radio" value="3">投项目</div></td>
                        <td width="90"><div align="left"><input name="diaocha" type="radio" value="4">了解科技局</div></td>
                      </tr>
                      <tr>
                        <td width="90"><div align="left"><input name="diaocha" type="radio" value="5">偶尔进入</div></td>
                        <td width="90"><div align="center">&nbsp;</div></td>
                      </tr>
                      <tr>
                        <td width="90"><div align="center"><input name="toupiao" type="submit" value="投票"><!--投票--></div></td>
                        <td width="90"><div align="center"><input name="jieguo" type="button" value="结果" onClick="window.open('jieguo.eiip','投票结果','width=400,height=300,location=no,menubar=no,resizable=yes,screenX=175,screenY=175,status=no,toolbar=no');"><!--结果--></div></td>
                      </tr>
                    </table>
					</form>
                  </div></td>
                  <td width="1" background="#{DocumentRoot}/web/image/tzgg03.jpg">&nbsp;</td>
                </tr>
              </table>
            </div></td>
          </tr>
        </table>
      </div></td>
    </tr>
  </table>
  
</div></td>



<td width=11 background="#{DocumentRoot}/web/image/left01.jpg"><div align=center></div></td>
</tr>

<tr><td colspan="3" background="#{DocumentRoot}/web/image/end01.jpg"><div align=""><img src="#{DocumentRoot}/web/image/end01.jpg"></div></td></tr>

</table>
<table width="778" border="0" cellpadding="0" cellspacing="0">
	
	
	<tr>
	<td width="11" background="#{DocumentRoot}/web/image/left01.jpg"><div align="center"><img src="#{DocumentRoot}/web/image/left01.jpg"></div></td>
	<td width="756" height="73"><div align="center">
		<table border="0" cellpadding="0" cellspacing="0">
			
			<tr><td width="756"><div align="center">
				<table border="1" cellpadding="0" cellspacing="0">
					<tr>
						<td width="189" height="30"><div align="center">
							<select 
            onChange=window.open(this.options[this.selectedIndex].value) size=1 
            name=select>
                      <option selected>友情链接网站</option>
					   <option value="http://www.lbwbw.com">灵宝党政公众网</option>
					  <option value="http://www.lbhbw.com">灵宝环保网</option
					  ><option value="http://www.lbedu,com">灵宝教育网</option>
                      <option value="http://www.lbwhj.com">灵宝文化局</option>
                      <option value="http://www.lbagri.gov.cn">灵宝农业网</option>
                      <option value="http://www.lb.ccoo.cn">灵宝在线</option>
                      <option value="http://www.lingbao.ha.cn">灵宝信息港</option>
                      <option value="http://www.lbtour.gov.cn">灵宝旅游信息网</option>
                      <option value="http://www.lbapple.cn">鲁家果园</option>
                      <option value="http://lingbao.agri.com.cn">金农网</option>
                      <option value="http://www.smx.hnkjcg.com">三门峡科技信息网</option>
                      <option value="http://www.smxsti.com/">三门峡科技成果网</option>
                      <option value="http://www.smxzc.com">三门峡信息港</option>
                      <option value="http://www.yima.gov.cn">义马科技信息网</option>
                      <option value="http://www.mckjw.net">渑池科技信息网</option>
                    </select>
						</div></td>
						<td width="189" height="30"><div align="center">
							<select 
            onChange=window.open(this.options[this.selectedIndex].value) size=1 
            name=select>
                      <option selected>科技部及各省科技厅</option>
					   <option value="http://www.henan.gov.cn/">河南省人民政府</option>
					  <option value="http://www.most.gov.cn/">国家科技部</option
					  ><option value="http://www.tisti.ac.cn">天津科技网</option>
                      <option value="http://www.stc.sh.cn">上海科技网</option>
                      <option value="http://www.stcsm.gov.cn">上海科技网站</option>
                      <option value="http://www.gzst.net.cn">广州科技网</option>
                      <option value="http://www.chengdunet.com">成都科技网</option>
                      <option value="http://www.fjinfo.gov.cn/">福建科息网</option>
                      <option value="http://www.jlstnet.net">吉林科技网</option>
                      <option value="http://www.nnst.net">南宁科技网</option>
                      <option value="http://www.bestinfo.net.cn">北京科技信息网</option>
                      <option value="http://www.sd.sti.ac.cn/">山东科技信息网</option>
                      <option value="http://hn.gov.cn">淮南科技信息网</option>
                      <option value="http://www.sxinfo.gov.cn/sxinfo/">山西科技信息网</option>
                      <option value="http://www.sti.gd.cn/">广东科技信息网</option>
                      <option value="http://www.gxsti.net.cn">广西科技信息网</option>
                      <option value="http://www.qz.gxsti.net.cn">钦州科技信息网</option>
                      <option value="http://www.hbsti.ac.cn/">湖北科技信息网</option>
                      <option value="http://www.hninfo.gov.cn">湖南科技信息港</option>
                      <option value="http://www.scsti.ac.cn/">四川科技信息网</option>
                      <option value="http://www.sninfo.gov.cn/">陕西科技信息网</option>
                      <option value="http://www.jxinfo.gov.cn">江西科技信息网</option>
                      <option value="http://www.heinfo.gov.cn">河北科技信息网</option>
                      <option value="http://www.lninfo.gov.cn">辽宁科技信息网</option>
                      <option value="http://202.101.234.139">江西抚州科技网</option>
                      <option value="http://www.xainfo.gov.cn/">西安科技信息网</option>
                      <option value="http://www.whinfo.gov.cn/">武汉科技信息网</option>
                      <option value="http://zhsti.net">珠海科技信息网</option>
                      <option value="http://www.nxinfo.gov.cn/">宁夏科技信息网</option>
                      <option value="http://www.nbinfo.net.cn">宁波科技信息网</option>
                      <option value="http://bh.gxsti.net.cn">北海科技信息网</option>
                      <option value="http://www.jmsc.gd.cn/">江门科技信息网</option>
                      <option value="http://www.hz.gxsti.net.cn">贺州科技信息网</option>
                      <option value="http://www.maoming.sti.gd.cn">茂名科技信息网</option>
                      <option value="http://www.lfinfo.gov.cn">廊坊科技信息网</option>
                      <option value="http://www.lzs.gxsti.net.cn">柳州科技信息网</option>
                      <option value="http://www.dalian-info.com">大连科技信息网</option>
                      <option value="http://www.hy.net.cn">淮阴科技信息网</option>
                      <option value="http://www.lyinfo.net.cn">溧阳科技信息网</option>
                      <option value="http://www.gsinfo.net.cn">甘肃科技信息网</option>
                      <option value="http://www.systi.net.cn">沈阳科技信息网</option>
                      <option value="http://www.hznet.com.cn">杭州科技信息网</option>
                      <option value="http://www.wjkw.net.cn">吴江科技信息网</option>
                      <option value="http://www.sxinfo.net.cn">绍兴科技信息网</option>
                      <option value="http://168.160.70.2">自贡科技信息网</option>
                      <option value="http://www.tzinfo.gov.cn">台州科技信息网</option>
                      <option value="http://ytinfo.ac.cn">烟台科技信息网</option>
                      <option value="http://www.ciboinfo.com.cn">淄博科技信息网</option>
                      <option value="http://www.shantou.net.cn">汕头科技信息网</option>
                      <option value="http://www.dx.gxsti.net.cn">东兴科技信息网</option>
                      <option value="http://www.info.net.cn">南通科技信息网</option>
                      <option value="http://www.jainfo.gov.cn">吉安科技信息网</option>
                      <option value="http://www.jyinfo.gov.cn">江阴科技信息网</option>
                      <option value="http://www.syssti.net.cn">沈阳科技信息网</option>
                      <option value="http://www.dragon.net.cn">黑龙江省科技信息网</option>
                      <option value="http://www.mz.sti.gd.cn">梅州市科技信息网</option>
                      <option value="http://www.sti.cz.jsinfo.net">常州市科技信息网</option>
                      <option value="http://www.zhangjiagang.js.cn">张家港科技信息网</option>
                      <option value="http://www.wx.net.cn">无锡市科技信息网</option>
                      <option value="http://www.database.org.cn">江苏省科技信息网</option>
                      <option value="http://www.lx.zj.cn">兰溪市科技信息网</option>
                      <option value="http://www.zjinfo.gov.cn">浙江省科技信息网</option>
                      <option value="http://www.ynst.net.cn">云南省科技信息网</option>
                      <option value="http://www.mz.sti.gd.cn">梅州市科技信息网</option>
                      <option value="http://www.hrbinfo.gov.cn">哈尔滨科技信息网</option>
                      <option value="http://zj.jsinfo.gov.cn/">镇江市科技信息网</option>
                      <option value="http://202.101.248.38">南昌市科技信息网</option>
                      <option value="http://210.73.146.2">宜兴市科技信息网</option>
                      <option value="http://dh.sti.js.cn">东海县科技信息网</option>
                      <option value="http://kjqb.rime.net.cn">吉林市科技信息网</option>
                      <option value="http://www.changxing.gov.cn/">长兴科技经济信息网</option>
                      <option value="http://www.xsinfo.gov.cn/">象山科技经济信息网</option>
                      <option value="http://www.dxinfo.gov.cn/">定西地区科技信息网</option>
                      <option value="http://www.lyginfo.js.cn/home.html">连云港市科技信息网</option>
                    </select>
						</div></td>
						<td width="189" height="30"><div align="center">
							 <select 
            onChange=window.open(this.options[this.selectedIndex].value) size=1 
            name=select>
                      <option selected>全国各类学会网站</option>
                      <option 
              value=http://www.cpenet.org.cn>中国物理学会</option>
                      <option 
              value=http://www.cstam.org.cn>中国力学学会</option>
                      <option 
              value=http://www.ccs.ac.cn>中国化学会</option>
                      <option 
              value=http://www.pmo.ac.cn>中国天文学会</option>
                      <option 
              value=http://www.cgs.org.cn>中国地球物理学会</option>
                      <option 
              value=http://www.ms.gyig.ac.cn>中国地球化学学会</option>
                      <option 
              value=http://www.im.ac.cn>中国微生物学会</option>
                      <option 
              value=http://www.csbmb.ibp.ac.cn>中国生物化学学会</option>
                      <option 
              value=http://www.bsc.org.cn>中国生物物理学会</option>
                      <option 
              value=http://www.iss.ac.cn>中国系统工程学会</option>
                      <option 
              value=http://www.cmes.org.cn>中国机械工程学会</option>
                      <option 
              value=http://www.agri.sci.tark.com>中国农业工程学会</option>
                      <option 
              value=http://www.autop.com.cn>中国自动化学会</option>
                      <option 
              value=http://www.cie-china.org>中国电子学会</option>
                      <option 
              value=http://www.csaa.org.cn>中国航空学会</option>
                      <option 
              value=http://www.cos.org.cn>中国兵工学会</option>
                      <option 
              value=http://www.csm.org.cn>中国金属学会</option>
                      <option 
              value=http://www.cscp.org.cn>腐蚀与防护学会</option>
                      <option 
              value=http://www.ns.org.cn>中国核学会</option>
                      <option 
              value=http://www.icm.ac.cn>中国颗粒学会</option>
                      <option 
              value=http://www.lightingchina.com>中国照明学会</option>
                      <option 
              value=http://www.cnpowersupply.com>中国电源学会</option>
                      <option 
              value=http://www.cma.org.cn>中华医学会</option>
                      <option 
              value=http://www.cpha.org.cn>中国药学会</option>
                      <option 
              value=http://www.csac.medchina.net>中国解剖学会</option>
                      <option 
              value=http://csbme.medchina.net>生物医学工程学会</option>
                      <option 
              value=http://www.cnphars.org.cn>中国药理学会</option>
                      <option 
              value=http://www.telemedicine.com.cn>中国心理卫生协会</option>
                      <option 
              value=http://www.caca.cn>中国抗痨协会</option>
                      <option 
              value=http://www.caas.org.cn>现场统计研究会</option>
                      <option 
              value=http://www.2000cn.net>中国流行色协会</option>
                      <option 
              value=http://www.zgnybwg.com.cn>中国农业历史学会</option>
                      <option 
              value=http://www.ccsi.org.cn>中国创造学会</option>
                      <option 
              value=http://www.nfsoc.org.cn>中国有色金属学会</option>
                    </select>
						</div></td>
						<td width="189" height="30"><div align="center">
							<select 
            onChange=window.open(this.options[this.selectedIndex].value) size=1 
            name=select>
                      <option selected>全国科普系列网站</option>
                      <option 
              value=http://www.kepu.gov.cn/link/link_in.asp?id=4>中国科普网</option>
                      <option value=http://www.techs-book.com>高技术辞典网</option>
                      <option>科普网页导航</option>
                      <option 
              value=http://www.zhb.gov.cn/index6.htm>自然生态</option>
                      <option 
              value=http://www.wildlife-plant.gov.cn/nlhzh.asp>鸟类环志</option>
                      <option 
              value=http://www.bjsports.gov.cn/qmjs/index_qmjs.htm>全民体育</option>
                      <option 
              value=http://www.cctv.com/science/review/review.html>科技博览</option>
                      <option 
              value=http://chinatelecom.com.cn/tel_friend/tel_friend_museum/tel_friend_museum.htm>电信博览</option>
                      <option value=http://www.bjlsj.gov.cn/kpzs/kpzs.htm>科普知识</option>
                      <option value=http://www.bstis.com/qbxh/xh_kpzh.htm>科普视野</option>
                      <option value=http://www.bjdzj.gov.cn/kphl/kphl.htm>科普画廊</option>
                      <option 
              value=http://www.bjsq.gov.cn/shbk/shbkhome.htm>生活百科</option>
                      <option 
              value=http://www.nmc.gov.cn/cwo200010/class.html>气象课堂</option>
                      <option 
              value=http://www.btxx.cn.net/garden/xinxi/xinxi.htm>信息前沿</option>
                      <option 
              value=http://www.bjpost.gov.cn/nous/index.htm>邮政常识</option>
                      <option 
              value=http://www.bjhb.gov.cn/ylbj/home.htm##_top>医疗保健</option>
                      <option value=http://www.bjbpl.gov.cn/index2.htm>园林信息</option>
                      <option 
              value=http://www.bjta.gov.cn/Chinese/lvxing_zhishi/default.htm>旅行知识</option>
                      <option value=http://www.bjxfj.gov.cn/bjxfj.htm>消防宣传</option>
                      <option value=http://www.bjfc.gov.cn/xj/xjfm.htm>温馨园地</option>
                      <option value=http://www.bjucmp.edu.cn/zcy/zcy.htm>中草药</option>
                      <option 
              value=http://serve.cei.gov.cn/98/04/bjszwy/index.html>北京市植物园</option>
                      <option 
              value=http://www.chinawater.net.cn/CWSnet/ScieEdu.html>科普园地</option>
                      <option value=http://www.cpirc.org.cn/child.html>幼儿天地</option>
                      <option 
              value=http://www.agri.gov.cn/_CaiLanzi/trs/clzkjyd.htm>科技园地</option>
                      <option value=http://www.bjp.org.cn/twg3/ze.htm>天文知识</option>
                      <option 
              value=http://www.agri.gov.cn/_Guoye/Pzhjsh/pzhjsh.htm>品种技术</option>
                      <option value=http://www.cbe21.com/psych/index.htm>心理健康教育</option>
                      <option 
              value=http://www.chinakids.net.cn/eyas/f2000/main.htm>百科图谱</option>
                      <option 
              value=http://www.beijingzoo.com.cn/procedure/index.asp?url=../dwkpg/dwkpg.htm>动物科普馆</option>
                      <option value=http://www.bjkp.gov.cn/good/index.htm>气象知识</option>
                      <option 
              value=http://cnfoodnews.cncom.net/20000822/kjyyyws/index.htm>科技与营养卫生</option>
                      <option 
            value=http://www.soa.gov.cn/kepu/index.html>海洋科普</option>
                    </select>
						</div></td>
					</tr>
				</table>
			</div></td></tr>
			
			
			<tr><td width="756"><div align="center">
				<table border="1" cellpadding="0" cellspacing="0">
					<tr>
						<td width="126" height="30"><div align="center"><font style="font-size:13.2px"><b><a href="mailto:zhangwenwen02011@126.com
">主编信箱</a></b></font></div></td>
						<td width="126" height="30"><div align="center"><font style="font-size:13.2px"><b><a href="" onClick="javascript:alert('请在电子信箱下面登陆。');">网站维护</a></b></font></div></td>
						<td width="126" height="30"><div align="center"><font style="font-size:13.2px"><b><a style="cursor:hand" onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.lbkj.com')">设为主页</a></b></font></div></td>
						<td width="126" height="30"><div align="center"><font style="font-size:13.2px"><b><a style="cursor:hand" onClick="javascript:window.external.AddFavorite('http://www.hnkjt.gov.cn/lb','灵宝科技信息网')" title="http://www.hnkjt.gov.cn/lb/">收藏本站</a></b></font></div></td>
						<td width="126" height="30"><div align="center"><font style="font-size:13.2px"><b><a href="wszx.eiip" target="_blank">联系我们</a></b></font></div></td>
						<td width="126" height="30"><div align="center"><font style="font-size:13.2px"><b><a href="" target="_blank">用户反馈</a></b></font></div></td>
					</tr>
				</table>
			
			</div></td></tr>
		
		</table>
	</div></td>
	<td width="11" background="#{DocumentRoot}/web/image/left01.jpg"><div align="center"><img src="#{DocumentRoot}/web/image/left01.jpg"></div></td>
	</tr>
	<tr>
		<td width="11" height="20" background="#{DocumentRoot}/web/image/end05.jpg"><div align="center"></div></td>
		<td width="756" height="20" background="#{DocumentRoot}/web/image/end04.jpg"><div align="center">灵宝市科技信息网</div></td>
		<td width="11" height="20" background="#{DocumentRoot}/web/image/end05.jpg"><div align="center"></div></td>
	</tr>
	<tr>
	<td width="11" background="#{DocumentRoot}/web/image/left01.jpg"><div align="center"><img src="#{DocumentRoot}/web/image/left01.jpg"></div></td>
	<td width="756" height="60"><div align="center">
		<table width="756" border="0" cellspacing="0" cellpadding="0" bgcolor="#CCCCCC">
          <tr>
            <td height="30"><div align="center">主办单位：灵宝市科技局</div></td>
            <td>豫ICP备05016622号<br></td>
            <td>您是第&nbsp;&nbsp;<font color="red" style="font-size:10.2pt">#{bcount}</font> &nbsp;&nbsp;位浏览者</td>
          </tr>
          <tr>
            <td height="30"><div align="center">联系电话：0398--8854960</div></td>
            <td>传真：0398--8858025</td>
            <td>地址：河南省灵宝市金城大道19号</td>
          </tr>
        </table>
	</div></td>
	<td width="11" background="#{DocumentRoot}/web/image/left01.jpg"><div align="center"><img src="#{DocumentRoot}/web/image/left01.jpg"></div></td>
	</tr>
</table>

</div>

<!--

<img   src="img/top001.jpg"   id=img   style="position:   absolute;   right:   0;   top:   0;"   >     
                                    
  <script>   
  <!--     
  var   xPos   =   20;   
  var   yPos   =   document.body.clientHeight;   
  var   step   =   1;   
  var   delay   =   30;     
  var   height   =   0;   
  var   Hoffset   =   0;   
  var   Woffset   =   0;   
  var   yon   =   0;   
  var   xon   =   0;   
  var   pause   =   true;   
  var   interval;   
  img.style.top   =   yPos;   
  function   changePos()   {   
  width   =   document.body.clientWidth;   
  height   =   document.body.clientHeight;   
  Hoffset   =   img.offsetHeight;   
  Woffset   =   img.offsetWidth;   
  img.style.left   =   xPos   +   document.body.scrollLeft;   
  img.style.top   =   yPos   +   document.body.scrollTop;   
  if   (yon)   {   
  yPos   =   yPos   +   step;   
  }   
  else   {   
  yPos   =   yPos   -   step;   
  }   
  if   (yPos   <   0)   {   
  yon   =   1;   
  yPos   =   0;   
  }   
  if   (yPos   >=   (height   -   Hoffset))   {   
  yon   =   0;   
  yPos   =   (height   -   Hoffset);   
  }   
  if   (xon)   {   
  xPos   =   xPos   +   step;   
  }   
  else   {   
  xPos   =   xPos   -   step;   
  }   
  if   (xPos   <   0)   {   
  xon   =   1;   
  xPos   =   0;   
  }   
  if   (xPos   >=   (width   -   Woffset))   {   
  xon   =   0;   
  xPos   =   (width   -   Woffset);   
  }   
  }   
  function   start()   {   
  img.visibility   =   "visible";   
  interval   =   setInterval('changePos()',   delay);   
  }   
  start();   
  //   End     
  </script>
  
  --> 
  
  
  
<script language="JavaScript">
      
self.onError=null;      
currentX = currentY =0;      
whichIt = null;      
lastScrollX =-2; lastScrollY = -2;      
NS = (document.layers) ? 1 : 0;      
IE = (document.all) ? 1: 0;      
<!-- STALKER CODE -->      
function heartBeat() {      
if(IE) { diffY = document.body.scrollTop; diffX = document.body.scrollRight; }      
if(NS) { diffY = self.pageYOffset; diffX = self.pageXOffset; }      
if(diffY != lastScrollY) {      
percent = .1 * (diffY - lastScrollY);      
if(percent > 0) percent = Math.ceil(percent);      
else percent = Math.floor(percent);      
if(IE) document.all.floater.style.pixelTop += percent;      
if(NS) document.floater.top += percent;      
lastScrollY = lastScrollY + percent;      
}      
if(diffX != lastScrollX) {      
percent = .1 * (diffX - lastScrollX);      
if(percent > 0) percent = Math.ceil(percent);      
else percent = Math.floor(percent);      
if(IE) document.all.floater.style.pixelRight += percent;      
if(NS) document.floater.right += percent;      
lastScrollX = lastScrollX + percent;      
}      
}      


function checkFocus(x,y) {      
stalkerx = document.floater.pageX;      
stalkery = document.floater.pageY;      
stalkerwidth = document.floater.clip.width;      
stalkerheight = document.floater.clip.height;      
if( (x > stalkerx && x < (stalkerx+stalkerwidth)) && (y > stalkery && y < (stalkery+stalkerheight))) return true;      
else return false;      
}      
function grabIt(e) {      
if(IE) {      
whichIt = event.srcElement;      
while (whichIt.id.indexOf("floater") == -1) {      
whichIt = whichIt.parentElement;      
if (whichIt == null) { return true; }      
}      
whichIt.style.pixelRight = whichIt.offsetRight;      
whichIt.style.pixelTop = whichIt.offsetTop;      
currentX = (event.clientX + document.body.scrollRight);      
currentY = (event.clientY + document.body.scrollTop);      
} else {      
window.captureEvents(Event.MOUSEMOVE);      
if(checkFocus (e.pageX,e.pageY)) {      
whichIt = document.floater;      
StalkerTouchedX = e.pageX-document.floater.pageX;      
StalkerTouchedY = e.pageY-document.floater.pageY;      
}      
}      
return true;      
}      
function moveIt(e) {      
if (whichIt == null) { return false; }      
if(IE) {      
newX = (event.clientX + document.body.scrollRight);      
newY = (event.clientY + document.body.scrollTop);      
distanceX = (newX - currentX); distanceY = (newY - currentY);      
currentX = newX; currentY = newY;      
whichIt.style.pixelRight += distanceX;      
whichIt.style.pixelTop += distanceY;      
if(whichIt.style.pixelTop < document.body.scrollTop) whichIt.style.pixelTop = document.body.scrollTop;      
if(whichIt.style.pixelRight < document.body.scrollRight) whichIt.style.pixelRight = document.body.scrollRight;      
if(whichIt.style.pixelRight > document.body.offsetWidth - document.body.scrollRight - whichIt.style.pixelWidth - 20) whichIt.style.pixelRight = document.body.offsetWidth - whichIt.style.pixelWidth - 20;      
if(whichIt.style.pixelTop > document.body.offsetHeight + document.body.scrollTop - whichIt.style.pixelHeight - 5) whichIt.style.pixelTop = document.body.offsetHeight + document.body.scrollTop - whichIt.style.pixelHeight - 5;      
event.returnValue = false;      
} else {      
whichIt.moveTo(e.pageX-StalkerTouchedX,e.pageY-StalkerTouchedY);      
if(whichIt.right < 0+self.pageXOffset) whichIt.right = 0+self.pageXOffset;      
if(whichIt.top < 0+self.pageYOffset) whichIt.top = 0+self.pageYOffset;      
if( (whichIt.right + whichIt.clip.width) >= (window.innerWidth+self.pageXOffset-17)) whichIt.right = ((window.innerWidth+self.pageXOffset)-whichIt.clip.width)-17;      
if( (whichIt.top + whichIt.clip.height) >= (window.innerHeight+self.pageYOffset-17)) whichIt.top = ((window.innerHeight+self.pageYOffset)-whichIt.clip.height)-17;      
return false;      
}      
return false;      
}      
function dropIt() {      
whichIt = null;      
if(NS) window.releaseEvents (Event.MOUSEMOVE);      
return true;      
}      


if(NS) {      
window.captureEvents(Event.MOUSEUP|Event.MOUSEDOWN);      
window.onmousedown = grabIt;      
window.onmousemove = moveIt;      
window.onmouseup = dropIt;      
}      
if(IE) {      
document.onmousedown = grabIt;      
document.onmousemove = moveIt;      
document.onmouseup = dropIt;      
}      
if(NS || IE) action = window.setInterval("heartBeat()",1);      
</script>

</body>
</html>
