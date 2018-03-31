
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="450"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('${(action)!}/add'))!}&id={id}" target="dialog"  width="450" rel="BaseinfoClass_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('${(action)!}/delete'))!}&id={id}" target="ajaxTodo" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="Id"></th>
				<th width="10%" orderField="behavior_args">行为模板</th>
				<th width="10%" orderField="status">状态 0启用 1禁用</th>
				<th width="10%" orderField="behavior_name">行为名称</th>
				<th width="10%" orderField="per_id">按钮id</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.ID)!}</td>
					<td >${(list.BEHAVIOR_ARGS)!}</td>
					<td >${(list.STATUS)!}</td>
					<td >${(list.BEHAVIOR_NAME)!}</td>
					<td >${(list.PER_ID)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

