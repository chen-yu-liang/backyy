<style>
	.toggleColl{
		background-color:#e7eff0;
    	background-repeat:repeat-x;
    	border:solid 1px #b8d0d6;
	    height:26px;
	    width:inherit;
	    overflow:hidden;
	    position:fixed;
	    z-index:1;
	}
	.toggleColl:hover{
		cursor:pointer;
		background-color:#99cc66;
		color:white;
	}
</style>
<div class="pageContent" style="padding:5px">
	<div class="formBar">
		<span style = "margin-left:10px;font-size:15px;font-weight:bold;">[系统]:<span style = "font-size:15px;">&nbsp;用户&nbsp;[ ${(user_name)! } ]&nbsp;权限设置</span></span>
	</div>
	<div class="divider"></div>
	<div class="tabs">
		<div class="tabsContent">
			<div>
				<div layoutH="80" style="float:left; display:block;width:240px; border:solid 1px #CCC; line-height:30px; background:#fff;">
				 	<div class="toggleColl"><h2 style = "text-align:center;">请选择菜单，完毕点击这里</h2></div>
				 	<#include "menu.ftl">
				</div>
				<div id="jBox" layoutH="80" class="unitBox" style="margin-left:246px;border:solid 1px #CCC; line-height:30px; background:#fff;overflow:hidden;">
					<#include "buttonPermission.ftl">
				</div>
			</div> 
		</div>
		<div class="tabsFooter">
			<div class="tabsFooterContent"></div>
		</div>
	</div>
</div>
