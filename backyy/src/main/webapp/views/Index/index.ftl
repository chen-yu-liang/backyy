<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=11" />
<!--<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE11" />-->
<title>后台管理总平台</title>
<link href="${(projectName)!}/public/dwz/zTree/css/zTreeStyle/zTreeStyle.css"  rel="stylesheet" type="text/css"/>
<link href="${(projectName)!}/public/dwz/themes/default/style.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="${(projectName)!}/public/dwz/themes/css/core.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="${(projectName)!}/public/dwz/themes/css/print.css" rel="stylesheet" type="text/css" media="print"/>
<link href="${(projectName)!}/public/dwz/uploadify/css/uploadify.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="${(projectName)!}/public/dwz/My97DatePicker/skin/default/datepicker.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="${(projectName)!}/public/dwz/poshytip/tip-yellow/tip-yellow.css" rel="stylesheet" type="text/css" />
<link href="${(projectName)!}/public/dwz/poshytip/tip-yellowsimple/tip-yellowsimple.css" rel="stylesheet" type="text/css" />
<link href="${(projectName)!}/public/dwz/kindeditor/themes/default/default.css"  rel="stylesheet" type="text/css">
<link href="${(projectName)!}/public/dwz/themes/css/my.css"  rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${(projectName)!}/public/dwz/fancybox/jquery.fancybox-1.3.4.css" media="screen" />

<!--[if IE]>
<link href="${(projectName)!}/public/dwz/themes/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
<![endif]-->

<!--[if lte IE 9]>
<script src="${(projectName)!}/public/dwz/js/speedup.js" type="text/javascript"></script>
<![endif]-->
<!--<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>-->
<script type="text/javascript" src="${(projectName)!}/public/dwz/js/LunarUTF-8.js"></script>	
<!--${base}-->
<script src="${(projectName)!}/public/dwz/js/jquery-1.7.2.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/jquery.autocomplete.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/jquery.autocompleteExt.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/jquery.cookie.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/attrchange.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/jquery.validate.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/jquery.bgiframe.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/uploadify/scripts/jquery.uploadify.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.core.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.util.date.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.validate.method.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.regional.zh.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.barDrag.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.drag.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.tree.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.accordion.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.ui.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.theme.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.switchEnv.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.alertMsg.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.contextmenu.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.navTab.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.tab.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.resize.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.dialog.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.dialogDrag.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.sortDrag.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.cssTable.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.stable.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.taskBar.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.ajax.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.pagination.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.database.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.effects.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.panel.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.checkbox.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.history.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.combox.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/dwz.regional.zh.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/kindeditor/kindeditor.js" type="text/javascript"  charset="utf-8"></script>
<script src="${(projectName)!}/public/dwz/kindeditor/lang/zh_CN.js" type="text/javascript" charset="utf-8"></script>
<script src="${(projectName)!}/public/dwz/zTree/js/jquery.ztree.all-3.5.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/zTree/js/jquery.ztree.exhide-3.5.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/poshytip/jquery.poshytip.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/fancybox/jquery.mousewheel-3.0.4.pack.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/fancybox/jquery.fancybox-1.3.4.pack.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/js/my.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/highcharts/highcharts.js" type="text/javascript"></script>

<script type="text/javascript">
window.user_power_bt="";
$(function(){
   
	DWZ.init("${(projectName)!}/public/dwz/dwz.frag.xml", {
		loginUrl:"${(projectName)!}/Users/goLogin", loginTitle:"登录",	// 弹出登录对话框
//		loginUrl:"login.html",	// 跳到登录页面
		statusCode:{ok:200, error:300, timeout:301}, //【可选】
		pageInfo:{pageNum:"pageNum", numPerPage:"numPerPage", orderField:"orderField", orderDirection:"orderDirection"}, //【可选】
		debug:true,	// 调试模式 【true|false】
		callback:function(){
			initEnv();
			$("#themeList").theme({themeBase:"${(projectName)!}/public/dwz/themes"}); // themeBase 相对于index页面的主题base路径
		}
	});
});
if ($.browser.msie) {
	window.setInterval("CollectGarbage();", 10000);
}
</script>
</head>

<body scroll="no">
	<!-- 按钮权限 -->
	<input id = "allHref" value = "${(btnStrDes)!}" type="hidden" />
	<div id="layout">
		<div id="header">
			<div class="headerNav">
				<a class="logo" href="${(loginhref)!}" style ="background:url(${(projectName)!}/logo/${(logoHref)!}) no-repeat;" target="_blank" >标志</a>
				<ul class="nav">
					<li><a href="${(projectName)!}/?spm=${(urlEncrption('/Users/pass'))!}" target="dialog" rel="users_pass" width="450" height = "200" mask="true">修改密码</a></li>
					<li><a href="${(projectName)!}/Users/exitUsers">退出</a></li>
				</ul>
				<ul class="themeList" id="themeList">
					<li theme="default"><div class="selected">蓝色</div></li>
					<li theme="green"><div>绿色</div></li>
					<!--<li theme="red"><div>红色</div></li>-->
					<li theme="purple"><div>紫色</div></li>
					<li theme="silver"><div>银色</div></li>
					<li theme="azure"><div>天蓝</div></li>
				</ul>
			</div>
			<!-- navMenu -->
		</div>
		<div id="leftside">
			<div id="sidebar_s">
				<div class="collapse">
					<div class="toggleCollapse"><div></div></div>
				</div>
			</div>
			<div id="sidebar">
				<#assign carte = getCache("${(userCode.user_name)!}_menuCarte")>
				<div class="toggleCollapse"><h2>主菜单</h2><div>收缩</div></div>
					<div class="accordion" fillSpace="sideBar">
				<#list carte as item>
					<#if item["LEVELS"] == 1>
						<div class="accordionHeader">
							<h2><span>Folder</span>${item["CARTE_NAME"]}</h2>
						</div>
						<#--(carte[item_index + 1])是否为空-->
						<#if (carte[item_index + 1]) ?? >
							<#if (carte[item_index + 1]["LEVELS"] > item["LEVELS"])>
								<div class="accordionContent">
									<ul class="tree treeFolder expand">
							<#elseif (carte[item_index + 1]["LEVELS"] == item["LEVELS"])>
								<div class="accordionContent"></div>
							</#if>
						</#if>
					</#if>
					<#if item["LEVELS"] == 2>
						<li>
							<#if (carte[item_index + 1]) ?? >
								<#if (carte[item_index + 1]["LEVELS"] > item["LEVELS"])>
									<a>${item["CARTE_NAME"]}</a>
								<#else>
									<a href="${(projectName)!}/?spm=${(urlEncrption('/${item["HREF"] }/?carte_id=${item["ID"]}'))!}" target="${item['TARGET']}" title="${(item['CARTE_INTRO'])!(item['CARTE_NAME'])}" rel="${item['REL']}">${item["CARTE_NAME"]}</a>
								</#if>
							<#else>
								<a href="${(projectName)!}/?spm=${(urlEncrption('/${item["HREF"] }/?carte_id=${item["ID"]}'))!}" target="${item['TARGET']}" title="${(item['CARTE_INTRO'])!(item['CARTE_NAME'])}" rel="${item['REL']}">${item["CARTE_NAME"]}</a>
							</#if>
							<#if (carte[item_index + 1]) ?? >
								<#if (carte[item_index + 1]["LEVELS"] > item["LEVELS"])>
									<ul>
								<#elseif (carte[item_index + 1]["LEVELS"] < item["LEVELS"])>
									</li></ul></div>
								<#else>
									</li>
								</#if>
							</#if>
					</#if>
					<#--<#if item["LEVELS"] == 3>
						<li>
							<#if (carte[item_index + 1])?? >
								<#if (carte[item_index + 1]["LEVELS"] > item["LEVELS"])>
									<a>${item["CARTE_NAME"]}</a>
								<#else>
									<a href="${(projectName)!}/?spm=${(urlEncrption('/${item["HREF"] }/?carte_id=${item["ID"]}'))!}" target="${item['TARGET']}" title="${(item['CARTE_INTRO'])!(item['CARTE_NAME'])}" rel="${item['REL']}">${item["CARTE_NAME"]}</a>
								</#if>
							<#else>
								<a href="${(projectName)!}/?spm=${(urlEncrption('/${item["HREF"] }/?carte_id=${item["ID"]}'))!}" target="${item['TARGET']}" title="${(item['CARTE_INTRO'])!(item['CARTE_NAME'])}" rel="${item['REL']}">${item["CARTE_NAME"]}</a>
							</#if>
						<#if (carte[item_index + 1])?? >
							<#if (carte[item_index + 1]["LEVELS"] == 1)>
								</li></ul></li></ul></div>
							<#elseif (carte[item_index + 1]["LEVELS"] == 2)>
								</li></ul></li>
							<#elseif (carte[item_index + 1]["LEVELS"] == item["LEVELS"])>
								</li>
							<#else>
								<ul>
							</#if>
						</#if>
					</#if>
					<#if item["LEVELS"] == 4>
						<li>
							<a href="${(projectName)!}/?spm=${(urlEncrption('/${item["HREF"] }/?carte_id=${item["ID"]}'))!}" target="${item['TARGET']}" title="${(item['CARTE_INTRO'])!(item['CARTE_NAME'])}" rel="${item['REL']}">${item["CARTE_NAME"]}</a>
						</li>
						<#if (carte[item_index + 1]) ?? >
							<#if (carte[item_index + 1]["LEVELS"] == 1)>
								</ul></li></ul></li></ul></div>
							<#elseif (carte[item_index + 1]["LEVELS"] == 2)>
								</ul></li></ul></li>
							<#elseif (carte[item_index + 1]["LEVELS"] == 3)>
								</ul></li>
							</#if>
						</#if>
					</#if> -->
					<#if item_index == (carte?size - 1)>
						<#if item["LEVELS"] == 1>
							</ul></div>
						<#elseif item["LEVELS"] == 2>
							</li></ul></div>
						<#elseif item["LEVELS"] == 3>
							</li></ul></li></div>
						<#elseif item["LEVELS"] == 4>
							</ul></li></ul></li></ul></div>
						</#if>
					</#if>
				</#list>
			</div>
			</div>
		</div>
		<div id="container">
			<div id="navTab" class="tabsPage">
				<div class="tabsPageHeader">
					<div class="tabsPageHeaderContent"><!-- 显示左右控制时添加 class="tabsPageHeaderMargin" -->
						<ul class="navTab-tab">
							<li tabid="main" class="main"><a href="javascript:;"><span><span class="home_icon">我的主页</span></span></a></li>
						</ul>
					</div>
					<div class="tabsLeft">left</div><!-- 禁用只需要添加一个样式 class="tabsLeft tabsLeftDisabled" -->
					<div class="tabsRight">right</div><!-- 禁用只需要添加一个样式 class="tabsRight tabsRightDisabled" -->
					<div class="tabsMore">more</div>
				</div>
				<ul class="tabsMoreList">
					<li><a href="javascript:;">我的主页</a></li>
				</ul>
				<div class="navTab-panel tabsPageContent layoutBox">
					<div class="page unitBox">
						<div class="accountInfo">
							<div class="alertInfo">
								<p> <strong>上次登录</strong>：${(userCode.last_date)!"无登录时间"}</p>
								<p> <strong>登录 IP </strong>：${(userCode.last_ip)!} &nbsp;&nbsp;<strong>总次数</strong>：${(userCode.login_count)!}</p>
							</div>
							<div class="right">
							</div>
							<p><span>欢迎您：${(userCode.cn_name)!}(${(userCode.user_name)!}) </span></p>
						</div>
						<div class="pageFormContent" layoutH="80" style="margin-right:230px">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">Copyright &copy; 2016 <a href="javascript:void(0)">后台管理总平台</a> Tel：</div>
</body>
</html>
