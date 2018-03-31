
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							登录账号:<input type="text" name="test_user" value="${(p.params.test_user)!''}" size=15/>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&test_client=${(p.params.test_client)!}" target="dialog" rel="BaseinfoClass_add" width="450"><span>添加</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/updateStatus'))!}&id={id}&sta={status}" target="ajaxTodo" title="确定要修改状态吗?"><span>启用/禁用</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="test_client">测试商户号</th>
				<th width="10%" orderField="test_user">测试员登录账号</th>
				<th width="10%" orderField="test_username">测试员名字</th>
				<th width="10%" orderField="last_time">最后登录时间</th>
				<th width="10%" orderField="test_status">测试员状态</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.TEST_USER)!}">
					<td target="status" rel="${(list.TEST_STATUS)!}"><#if list.TEST_CLIENT ??>${(list.TEST_CLIENT)!}<#else>暂无测试商户</#if></td>
					<td >${(list.TEST_USER)!}</td>
					<td >${(list.TEST_USERNAME)!}</td>
					<td >${(list.LAST_TIME)!}</td>
					<td ><#if list.TEST_STATUS ?? && list.TEST_STATUS = '0'>正常<#else>禁用</#if>[${(list.TEST_STATUS)!}]</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

