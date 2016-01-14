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
<link href="#{DocumentRoot}/eipk/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="#{DocumentRoot}/eipk/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="#{DocumentRoot}/eipk/skin/default/skin.css" rel="stylesheet" type="text/css" id="skin" />
<link href="#{DocumentRoot}/web/iconfont/iconfont.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="#{DocumentRoot}/web/jq/jq.js"></script> 
<script type="text/javascript" src="#{DocumentRoot}/web/jq/layer/1.9.3/layer.js"></script> 
<script type="text/javascript" src="#{DocumentRoot}/eipk/js/H-ui.js"></script> 
<script type="text/javascript" src="#{DocumentRoot}/eipk/js/H-ui.admin.js"></script> 
<!--[if IE 6]>
<script type="text/javascript" src="#{DocumentRoot}/eipk/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>#{AppName}</title>
</head>
<body>
<header class="Hui-header cl"> <a class="Hui-logo l" title="#{AppName}" href="#{DocumentRoot}/">#{AppName}</a>
	<nav class="mainnav cl" id="Hui-nav">
		<ul>
			<li class="dropDown dropDown_hover"><a href="javascript:;" class="dropDown_A"><i class="iconfont">&#xe600;</i> 快捷菜单 <i class="iconfont">&#xe6d5;</i></a>
				<ul class="dropDown-menu radius box-shadow">
					<li><a href="#{DocumentRoot}/s/article/edit.x" target="show_main_frame"><i class="iconfont">&#xe616;</i> 发布工作动态</a></li>
				</ul>
			</li>
		</ul>
	</nav>
	<ul class="Hui-userbar">
		<li>[#{loginUserRole}]</li>
		<li class="dropDown dropDown_hover"><a href="#" class="dropDown_A">#{loginUserName} <i class="iconfont">&#xe6d5;</i></a>
			<ul class="dropDown-menu radius box-shadow">
				<li><a href="#{DocumentRoot}/web/index.x?cl=login_layer">切换账户</a></li>
				<li><a href="#{DocumentRoot}/logout.x">退出</a></li>
			</ul>
		</li>
		<!-- <li id="Hui-msg"> <a href="#" title="消息"><span class="badge badge-danger">1</span><i class="iconfont" style="font-size:18px">&#xe68a;</i></a> </li> -->
		<li id="Hui-skin" class="dropDown right dropDown_hover"><a href="javascript:;" title="换肤"><i class="iconfont" style="font-size:18px">&#xe62a;</i></a>
			<ul class="dropDown-menu radius box-shadow">
				<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
				<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
				<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
				<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
				<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
				<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
			</ul>
		</li>
	</ul>
</header>
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">
		<dl>
			<dt><i class="iconfont">&#xe616;</i> 网站内容管理<i class="iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="#{DocumentRoot}/s/article/man.x" target="show_main_frame">发布管理</a></li>
					<li><a href="#{DocumentRoot}/s/section/man.x" target="show_main_frame">栏目管理</a></li>					
				</ul>
			</dd>
		</dl>
		<dl>
			<dt><i class="iconfont">&#xe616;</i> 科技信贷管理-贷前<i class="iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="#{DocumentRoot}/s/article/man.x" target="show_main_frame">新增业务受理-基地办</a></li>
					<li><a href="#{DocumentRoot}/s/section/man.x" target="show_main_frame">现场调查-基地办</a></li>
					<li><a href="#{DocumentRoot}/s/section/man.x" target="show_main_frame">推荐授信-基地办</a></li>
				</ul>
			</dd>
		</dl>
		<dl>
			<dt><i class="iconfont">&#xe616;</i> 科技信贷-贷前<i class="iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="#{DocumentRoot}/s/article/man.x" target="show_main_frame">新增业务受理-项目经理</a></li>
					<li><a href="#{DocumentRoot}/s/section/man.x" target="show_main_frame">尽职调查-项目经理</a></li>
					<li><a href="#{DocumentRoot}/s/section/man.x" target="show_main_frame">审核尽调-项目部负责人</a></li>
					<li><a href="#{DocumentRoot}/s/section/man.x" target="show_main_frame">信贷风控受理-风控经理</a></li>
					<li><a href="#{DocumentRoot}/s/section/man.x" target="show_main_frame">审核风控-风控部负责人</a></li>
					<li><a href="#{DocumentRoot}/s/section/man.x" target="show_main_frame">审批信贷-总经理</a></li>
				</ul>
			</dd>
		</dl>
		<dl>
			<dt><i class="iconfont">&#xe62e;</i> 系统操作<i class="iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="#{DocumentRoot}/s/user/u_info.x" target="show_main_frame">完善个人资料</a></li>
					<li><a href="#{DocumentRoot}/s/user/u_password.x" target="show_main_frame">修改密码</a></li>
					<li><a href="#{DocumentRoot}/logout.x" target="show_main_frame">退出系统</a></li>
				</ul>
			</dd>
		</dl>
	</div>
</aside>
<div class="dislpayArrow"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<section class="Hui-article-box">
	<div id="Hui-tabNav" class="Hui-tabNav">
		<div class="Hui-tabNav-wp">
			<ul id="min_title_list" class="acrossTab cl">
				<li class="active"><span title="我的桌面">我的桌面</span><em></em></li>
			</ul>
		</div>
		<div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="iconfont">&#xe6d7;</i></a></div>
	</div>
	<div id="iframe_box" class="Hui-article">
		<div class="show_iframe">
			<div style="display:none" class="loading"></div>
			<iframe name="show_main_frame" scrolling="auto" frameborder="0" src="#{DocumentRoot}/s/welcome.x"></iframe>
		</div>
	</div>
</section>
</body>
</html>