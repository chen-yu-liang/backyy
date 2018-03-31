
<#include "/common/pageForm.ftl">
<#assign product_type=getCache("b_product_type")>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							编号:<input type="text" name="id" value="${(p.params.id)!''}" size=15/>
						</td>
						<td>
							<div class="buttonActive"><div class="buttonContent"><button type="submit">查询</button></div></div>
						</td>
				<tr>
			</table>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="520" height="420"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}" target="dialog"  width="520" height="420" rel="BaseinfoClass_add" ><span>详情</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete'))!}&id={id}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/updateStatus'))!}&id={id}&sta={status}" target="ajaxTodo" title="确定修改状态吗?"><span>启用/禁用</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="Id">编号</th>
				<th width="10%" orderField="singlecapamount">单笔上限</th>
				<th width="10%" orderField="singlepenlimitamount">单笔下限</th>
				<th width="10%" orderField="daylimitamount">单日限额</th>
				<th width="10%" orderField="status">启用状态 </th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td target="status" rel="${(list.STATUS)!}">${(list.ID)!}</td>
					<td >${(list.SINGLEPENLIMITAMOUNT)!}</td>
					<td >${(list.SINGLECAPAMOUNT)!}</td>
					<td >${(list.DAYLIMITAMOUNT)!}</td>
					<td ><#if list.STATUS == 0>启用<#else>禁用</#if></td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

