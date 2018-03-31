
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							代理商编号:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
						</td>
						<td>
							代理商名称:<input type="text" name="agent_name" value="${(p.params.agent_name)!''}" size=15/>
						</td>
						<td>
							代理商等级:<input type="text" name="agent_level" value="${(p.params.agent_level)!''}" size=15/>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="Agent_add" width="900" height="500" ><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}" target="dialog"  width="900" height="500" rel="Agent_add" title="修改-{cn}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete'))!}&id={id}" target="ajaxTodo" title="确定要删除【{cn}】吗?"><span>删除</span></a></li>
		-->
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={cm}" target="dialog"  width="900" height="500" rel="Agent_add" title="查看-{cn}"><span>详细资料</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('Agent/findpictrue'))!}&agent_no={cm}&agent_name={cn}&status=0" target="navTab" rel="Agent_findpictrue"><span>图片信息</span></a></li> 
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
			<thead>
			<tr>
				<th width="8%" orderField="agent_no">代理商编号</th>
				<th width="8%" orderField="agent_name">代理商名称</th>
				<th width="6%" orderField="person">联系人</th>
				<th width="10%" orderField="card_no">身份证信息</th>
				<th width="8%" orderField="province">省份</th>
				<th width="8%" orderField="city">城市</th>
				<th width="8%" orderField="area">区县</th>
				<th width="6%" orderField="mobile">手机</th>
				<th width="5%" orderField="status">状态</th>
				<th width="5%" orderField="agent_style">渠道类型</th>
				<th width="8%" orderField="add_date">添加日期</th>
				<th width="6%" orderField="add_user">添加人</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td target="cn" rel="${(list.AGENT_NAME)!}">${(list.AGENT_NO)!}</td>
					<td target="cm" rel="${(list.AGENT_NO)!}">${(list.AGENT_NAME)!}</td>
					<td >${(list.PERSON)!}</td>
					<td >${(list.CARD_NO)!}</td>
					<td >${(list.PROVINCE)!}</td>
					<td >${(list.CITY)!}</td>
					<td >${(list.AREA)!}</td>
					<td >${(list.MOBILE)!}</td>
					<td ><#if list.STATUS==0>申请中</#if>[${(list.STATUS)!}]</td>
					<td ><#if list.AGENT_STYLE==0>代理商<#else>机构</#if></td>
					<td >${(list.ADD_DATE)!}</td>
					<td >${(list.ADD_USER)!} </td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>
