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
</head>
<body>
<table style="width:100%;"><tr style="background-color:#f5f5f5"><td class="tl">
<i class="iconfont">&#xe67f;</i> 首页 
<span>&gt;</span> 内容管理 <span>&gt;</span> 栏目管理
</td><td class="tr">
<a class="btn" href="javascript:location.replace(location.href);" title="刷新" >
<i class="iconfont">&#xe68f;</i>
</a>
</td></tr>
</table>
<div class="clear"></div>
<table style="width:95%;">
<tr><td class="tl">
</td>
<td class="tr">
<a class="btn" href="#{DocumentRoot}/s/section/edit.x">
<i class="iconfont">&#xe600;</i> 新栏目
</a>
</td>
</tr>
</table>
<table class="table_a" style="width:95%">
<tr>
	<th>序号</th>
	<th>栏目名称</th>
	<th>操作</th>	
</tr>
#Begin{section_list}
<tr class="text-c">
	<td>#{id}</td>
	<td class="tl">#{sectionName}</td>
	<td>
	<a class="btn" href="#{DocumentRoot}/s/section/edit.x?section_id=#{id}" title="编辑">
	<i class="iconfont">&#xe6df;</i> 编辑</a>&nbsp;&nbsp;
	<a class="btn" href="javascript:section_del(this,#{id});" title="删除">
	<i class="iconfont">&#xe6e2;</i> 删除</a>
	</td>
</tr>
#End{section_list}
</table>
<script>
function section_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$.ajax({
			  type: "POST",
			  url: "#{DocumentRoot}/s/section/del.x",
			  data: { 
				  section_id:id
			  }
		}).done(function( result ) {
			location.replace(location.href);
		});
	});
}
</script> 
</body>
</html>