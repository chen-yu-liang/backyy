
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
				<th width="8%" orderField="user_num">用户标识</th>
				<th width="10%" orderField="files_name">图片名称</th>
				<th width="20%" orderField="files_address">访问地址</th>
				<th width="8%" orderField="files_type">文件类别 0正常资料图片 1 log标识</th>
				<th width="8%" orderField="is_show">是否显示 0不显示 1显示</th>
				<th width="10%" orderField="add_time">添加时间</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.USER_NUM)!}</td>
					<td >${(list.FILES_NAME)!}</td>
					<td >${(list.FILES_ADDRESS)!}</td>
					<td >${(list.FILES_TYPE)!}</td>
					<td >${(list.IS_SHOW)!}</td>
					<td >${(list.ADD_TIME)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

