<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
	<div class="searchBar">
		<table class="searchContent">
			<tr>
				<td>
					控件名称：<input type="text" name="class_cn" value="${(p.params.class_cn)!''}">
				</td>
				<td>
					控件英文：<input type="text" name="class_en" value="${(p.params.class_en)!''}">
				</td>
				<td>
					<div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div>
				</td>
			</tr>	
		</table>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('BaseinfoClass/add'))!}" target="dialog" rel="BaseinfoClass_add" width="470" height="400"><span>添加基本类别</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('BaseinfoClass/add'))!}&id={id}" target="dialog"  width="470" height="400" rel="BaseinfoClass_add" title="修改基本类别-{class_cn}"><span>修改基本类别</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('BaseinfoClass/delete'))!}&id={id}&class_en={class_en}" target="ajaxTodo" title="确定要删除【{class_cn}】吗?"><span>删除基本类别</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="15%">控件名称</th>
				<th width="10%">英文名称</th>
				<th width="10%">控件值</th>					
				<th width="20%">备注</th>
				<th width="5%">添加人</th>
				<th width="10%">添加时间</th>
				<th width="5%">状态</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as rs>
				<tr target="id" rel="${rs.ID}">
					<td target="class_cn" rel="${(rs.CLASS_CN)!}">${(rs.CLASS_CN)!}</td>
					<td target="class_en" rel="${(rs.CLASS_EN)! }">${(rs.CLASS_EN)!}</td>
					<td>
						<a href='${(projectName)!}/?spm=${(urlEncrption('BaseinfoClass/listInfo'))!}&class_en=${(rs.CLASS_EN)!}' 
						title="${(rs.CLASS_CN)!}-信息管理" target="dialog" width="750" height="500" class="button" rel="listInfo">
							<span>管理控件信息</span>
						</a>
					</td>
					<td>${(rs.NOTE)!}</td>
					<td>${(rs.ADDNAME)!}</td>
					<td>${(rs.ADDTIME)!}</td>
					<td><#if rs.STATUS==1>启用<#else>禁用</#if></td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>
