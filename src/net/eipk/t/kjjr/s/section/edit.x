<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="#{DocumentRoot}/eipk/lib/html5.js"></script>
<script type="text/javascript" src="#{DocumentRoot}/eipk/lib/respond.min.js"></script>
<script type="text/javascript" src="#{DocumentRoot}/eipk/lib/PIE_IE678.js"></script>
<![endif]-->
<link href="#{DocumentRoot}/web/css/style.css" rel="stylesheet" type="text/css" />
<link href="#{DocumentRoot}/web/iconfont/iconfont.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="#{DocumentRoot}/eipk/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<script src="#{DocumentRoot}/web/jq/jq.js" type="text/javascript"></script>
<script src="#{DocumentRoot}/web/jq/layer/layer.js" type="text/javascript"></script>
<title>#{AppName}</title>
<script>
function save(){
	if(checkForm()){
		$.ajax({
			  type: "POST",
			  url: "#{DocumentRoot}/s/section/edit.x",
			  data: { 
				  section_id:$("#section_id").val(),
				  section_name:$("#section_name").val(),
				  section_type:$("#section_type:checked").length
			  }
		}).done(function( result ) {
			layer.alert('保存成功', {icon: 1, title:'系统提示'},function(index){
				location="#{DocumentRoot}/s/section/man.x";
			});
		});
	}	
}
function checkForm(){
	if($("#section_name").val()==''){
		$("#sys_msg").text("栏目名称不能为空!");
		return false;
	}
	else{
		return true;
	}
}
</script>
</head>
<body>
<table style="width:100%;"><tr style="background-color:#f5f5f5"><td class="tl">
<i class="iconfont">&#xe67f;</i> 首页 
<span>&gt;</span> 内容管理 <span>&gt;</span> 栏目编辑
</td></tr>
</table>
<div class="clear"></div>
<table class="table_a" style="width:95%;">
<form id="formEntry">
<input type="hidden" id="section_id" value="#{section_id}">
<tr>
<td></td>
<td class="tl"><span id="sys_msg" style="color:red;"></span></td>
</tr>
<tr>
<td><span style="color:red">*</span> 栏目名称：</td>
<td class="tl"><input type="text" value="#{section_name}" placeholder="" id="section_name"></td>
</tr>
<tr>
<td>单条栏目：</td>
<td class="tl"><input type="checkbox" id="section_type" #{section_type}></td>
</tr>
<tr>
<td></td>
<td class="tl">
<input type="button" onClick="save();" value="保存">&nbsp;
<input type="button" onClick="location.replace('#{DocumentRoot}/s/section/man.x');" value="取消">
</td>
</tr>
</form>
</table>
</body>
</html>