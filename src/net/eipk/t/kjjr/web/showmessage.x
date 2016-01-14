<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<title>#{AppName}</title>
<link rel="stylesheet" href="#{DocumentRoot}/web/css/style2.css">

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
<table width=778 border=0 cellspacing=0 cellpadding=0>
<tr>
	<td width="11" background="#{DocumentRoot}/web/image/left01.jpg"><div align="center"><img src="#{DocumentRoot}/web/image/left01.jpg"></div></td>
	<td width="756" valign="top" style="padding-left:10px;padding-right:10px">
		
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr><td height="30"><div align="center">&nbsp;</div></td></tr>
			<tr><td><div align="center">#{mtitle}</div></td>
			</tr>
			<tr><td height="40"><div align="center">发布日期：<fmt:formatDate value='#{insertdate}' pattern='yyyy-MM-dd'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览量：#{browse}</tr>
			<tr><td height="25"><div align="left">#{mtext}</div></td></tr>
			<tr><td height="40"><div align="right"><font style="font-size:10.2pt;"><fmt:formatDate value='#{insertdate}' pattern='yyyy-MM-dd'/></font>&nbsp;&nbsp;</div></td></tr>
		</table>
	
	</td>
	
	<td width="11" background="#{DocumentRoot}/web/image/left01.jpg"><div align="center"><img src="#{DocumentRoot}/web/image/left01.jpg"></div></td>
</tr>
	<tr>
		<td width="11" background="#{DocumentRoot}/web/image/left01.jpg"><div align="center"><img src="#{DocumentRoot}/web/image/left01.jpg"></div></td>
		<td width="756"><div align="center"><img src="#{DocumentRoot}/web/image/left0010.jpg"></div></td>
		<td width="11" background="#{DocumentRoot}/web/image/left01.jpg"><div align="center"><img src="#{DocumentRoot}/web/image/left01.jpg"></div></td>
	</tr>
	<tr>
		<td width="11" background="#{DocumentRoot}/web/image/left01.jpg"><div align="center"><img src="#{DocumentRoot}/web/image/left01.jpg"></div></td>
		<td width="756"><div align="center">
			<table border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC" width="756" height="80">
				<tr>
					<td><div align="center">主办单位：灵宝市科技局</div></td>
				</tr>
				<tr><td><div align="center">联系电话：0398--8854960</div></td></tr>
				<tr>
					<td><div align="center">传真：0398--8858025</div></td>
				</tr>
				<tr><td><div align="center">地址：河南省灵宝市金城大道19号</div></td></tr>
			</table>
		</div></td>
		<td width="11" background="#{DocumentRoot}/web/image/left01.jpg"><div align="center"><img src="#{DocumentRoot}/web/image/left01.jpg"></div></td>
	</tr>
</table>

</div>
</body>
<SCRIPT language=javascript>
<!--
 
function popUp(str) {
newX = window.event.x + document.body.scrollLeft;
newY = window.event.y + document.body.scrollTop;

var str1 = str;

if ( str1.style.display == "")
{
    str1.style.display = "none" ;
}else 
{
	str1.style.display = "";
}
	str1.style.pixelLeft = newX - 50;
	str1.style.pixelTop = newY - 50;
}

function popDown(){
	
}
//-->
</SCRIPT>
</html>