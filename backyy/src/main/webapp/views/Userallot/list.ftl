
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							ID:<input type="text" name="Id" value="${(p.params.xingming)!''}" size=15/>
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
			<li><a class="add" href="${baseClass}/add" target="dialog" rel="BaseinfoClass_add" width="450"><span>添加</span></a></li>
			<li><a class="edit" href="${baseClass}/add?id={id}" target="dialog"  width="450" rel="BaseinfoClass_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="delete" href="${baseClass}/delete?id={id}" target="ajaxTodo" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="carte_name">null</th>
				<th width="10%" orderField="carte_id">null</th>
				<th width="10%" orderField="admin_all_id">null</th>
				<th width="10%" orderField="admin_id">null</th>
				<th width="10%" orderField="belong_terrace">null</th>
				<th width="10%" orderField="allot_sign">null</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${list.Id}">
					<td >${(list.CARTE_NAME)!}</td>
					<td >${(list.CARTE_ID)!}</td>
					<td >${(list.ADMIN_ALL_ID)!}</td>
					<td >${(list.ADMIN_ID)!}</td>
					<td >${(list.BELONG_TERRACE)!}</td>
					<td >${(list.ALLOT_SIGN)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

