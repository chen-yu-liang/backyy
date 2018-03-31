
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							商户编号:<input type="text" name="client_no" value="${(p.params.client_no)!''}" size=15/>
						</td>
						<td>
							商户名称:<input type="text" name="client_name" value="${(p.params.client_name)!''}" size=15/>
						</td>
						<td>
							客户等级:<input type="text" name="client_level" value="${(p.params.client_level)!''}" size=15/>
						</td>
						<td>
							状态:
							<select  name="status" selectvl="${(p.params.status)!}">
							<option value="">请选择</option>
							<option value=-2>打回</option>
							<option value=-1>停用</option>
							<option value=0>申请</option>
							<option value=1>审核</option>
							<option value=2>正式</option>
							</select>
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
		<!--
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="450"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add?id={id}'))!}" target="dialog"  width="450" rel="BaseinfoClass_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete?id={id}'))!}" target="ajaxTodo" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
		-->
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}" target="dialog"  width="900" height="500" rel="ClientBase_add" title="查看-{cn}"><span>详细资料</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('${(action)!}/findpictrue'))!}&client_no={cm}&client_name={cn}&status=0" target="navTab" rel="ClientBase_findpictrue"><span>图片信息</span></a></li> 
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="6%" orderField="client_no">商户编号</th>
				<th width="8%" orderField="client_name">商户名称</th>
				<th width="8%" orderField="client_uuid">商户唯一标识</th>
				<th width="8%" orderField="add_date">添加日期</th>
				<th width="7%" orderField="province">省份</th>
				<th width="7%" orderField="city">城市</th>
				<th width="7%" orderField="area">区县</th>
				<th width="5%" orderField="client_level">客户等级</th>
				<th width="6%" orderField="agent_no">代理商</th>
				<th width="8%" orderField="we_unionid">微信</th>
				<th width="5%" orderField="person">联系人</th>
				<th width="7%" orderField="mobile">手机</th>
				<th width="5%" orderField="status">状态</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.CLIENT_NO)!}">
					<td target="cn" rel="${(list.CLIENT_NAME)!}">${(list.CLIENT_NO)!}</td>
					<td target="cm" rel="${(list.CLIENT_NO)!}">${(list.CLIENT_NAME)!}</td>
					<td >${(list.CLIENT_UUID)!}</td>
					<td >${(list.ADD_DATE)!}</td>
					<td >${(list.PROVINCE)!}</td>
					<td >${(list.CITY)!}</td>
					<td >${(list.AREA)!}</td>
					<td >${(list.CLIENT_LEVEL)!}</td>
					<td >${(list.AGENT_NAME)!}-[${(list.AGENT_NO)!}]</td>
					<td >${(list.WE_UNIONID)!}</td>
					<td >${(list.PERSON)!}</td>
					<td >${(list.MOBILE)!}</td>
					<td ><#if list.STATUS==2>正式<#elseif list.STATUS==1>未审核<#elseif list.STATUS==0>申请中<#elseif list.STATUS==-1>停用<#elseif list.STATUS==-2>打回</#if>[${(list.STATUS)!}]</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

