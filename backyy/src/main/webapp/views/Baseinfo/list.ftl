<#include "/common/pageForm.ftl">
<#assign product_type=getCache("b_product_type")>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
	<div class="searchBar">
		<table class="searchContent">
			<tr>
				<td>
				产品:
				<select name="info_en" id="info_en" selectvl="${(p.params.info_en)!''}">
					<option value="">--全部--</option>
					<#list product_type?keys as key>
					 <option value="${(key)!}">${product_type[(key)!]["INFO"]}</option>
					</#list>
					</select>
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
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('Baseinfo/updateStatus'))!}&id={id}&sta={status}" target="ajaxTodo" title="确定修改吗?"><span>启用/禁用</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%">产品名称</th>
				<th width="5%">添加人</th>
				<th width="10%">添加时间</th>
				<th width="5%">状态</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${list.ID}">
					<td target="status" rel="${list.STATUS}">${(list.INFO)!}</td>
					<td>${(list.ADDNAME)!}</td>
					<td>${(list.ADDTIME)!}</td>
					<td><#if list.STATUS==1>启用<#else>禁用</#if></td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>
