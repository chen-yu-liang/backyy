
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="450"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add?id={id}'))!}" target="dialog"  width="450" rel="BaseinfoClass_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete?id={id}'))!}" target="ajaxTodo" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="Id"></th>
				<th width="10%" orderField="object_type">对象类型0商户，1代理商</th>
				<th width="10%" orderField="object_no">对象编号（商户或者代理商编号）</th>
				<th width="10%" orderField="rate_type">费率类型，0代表S0，1代表T1</th>
				<th width="10%" orderField="rate_no">费率代号</th>
				<th width="10%" orderField="add_time">操作时间</th>
				<th width="10%" orderField="add_user">添加人</th>
				<th width="10%" orderField="check_value">校验值</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.ID)!}</td>
					<td >${(list.OBJECT_TYPE)!}</td>
					<td >${(list.OBJECT_NO)!}</td>
					<td >${(list.RATE_TYPE)!}</td>
					<td >${(list.RATE_NO)!}</td>
					<td >${(list.ADD_TIME)!}</td>
					<td >${(list.ADD_USER)!}</td>
					<td >${(list.CHECK_VALUE)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

