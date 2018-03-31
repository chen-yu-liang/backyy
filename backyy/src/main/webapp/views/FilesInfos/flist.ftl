
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
				<th width="10%" orderField="add_man">添加人</th>
				<th width="10%" orderField="files_id">文件id（主键）</th>
				<th width="10%" orderField="files_address">文件地址</th>
				<th width="10%" orderField="files_mame">文件名字</th>
				<th width="10%" orderField="add_time">添加时间</th>
				<th width="10%" orderField="client_no">商户号</th>
				<th width="10%" orderField="files_type">文件类型</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.ADD_MAN)!}</td>
					<td >${(list.FILES_ID)!}</td>
					<td >${(list.FILES_ADDRESS)!}</td>
					<td >${(list.FILES_MAME)!}</td>
					<td >${(list.ADD_TIME)!}</td>
					<td >${(list.CLIENT_NO)!}</td>
					<td >${(list.FILES_TYPE)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>


