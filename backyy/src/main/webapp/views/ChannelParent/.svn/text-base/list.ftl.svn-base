
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							渠道id:<input type="text" name="id" value="${(p.params.id)!''}" size=15/>
						</td>
						<td>
							渠道名称:<input type="text" name="name" value="${(p.params.name)!''}" size=15/>
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
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}" target="dialog"  width="450" rel="ChannelParent_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/addappid'))!}&id={id}" target="dialog"  width="450" rel="ChannelParent_addappid" ><span>添加公众号</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/addkey'))!}&id={id}" target="dialog"  width="450" rel="ChannelParent_addkey" ><span>设置秘钥</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete'))!}&id={id}" target="ajaxTodo" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="Id">渠道id</th>
				<th width="10%" orderField="level">优先级</th>
				<th width="10%" orderField="name">渠道名称</th>
				<th width="10%" orderField="app_id">应用id</th>
				<th width="20%" orderField="db_private_key">私钥</th>
				<th width="10%" orderField="status">状态</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td target="class_cn" rel="${(list.NAME)!}">${(list.ID)!}</td>
					<td >${(list.LEVEL)!}</td>
					<td >${(list.NAME)!}</td>
					<td >${(list.APP_ID)!}</td>
					<td >${(list.DB_PRIVATE_KEY)!}</td>
					<td ><#if list.STATUS??&&list.STATUS==0>启用<#else>禁用</#if>[${(list.STATUS)!}]</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

