
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							商户号:<input type="text" name="client_no" value="${(p.params.client_no)!''}" size=15/>
						</td>
						<td>
							通道:
							<select name="tbid" id="tbid" selectvl="${(p.params.tbid)!''}">
								<option value="">--全部--</option>
								<#list clientBindingList as key>
									 <option value="${(key.id)!}">${(key.name)!''}</option>
								</#list>
							</select>
						</td>
						<td>
							结算人:<input type="text" name="account_name" value="${(p.params.account_name)!''}" size=15/>
						</td>
						<td>
							交易时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
							--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
						</td>
						<td>
							类型:
							<select name="bind_type" id="bind_type" selectvl="${(p.params.bind_type)!''}">
								<option value="">--全部--</option>
								<option value="1">一对一</option>
								<option value="0">大商户</option>
							</select>
						</td>
						<td>
							状态:
							<select name="status" id="status" selectvl="${(p.params.status)!''}">
								<option value="">--全部--</option>
								<option value="0">启用</option>
								<option value="1">禁用</option>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="570" height="450"><span>添加</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete'))!}&id={id}" target="ajaxTodo" title="确定要删除【{cn}】吗?"><span>删除</span></a></li>
			<li><a class="edit" href="${(projectName)!}/?spm=${(urlEncrption('/ClientBinding/updateStatus'))!}&id={id}&sta={st}" target="ajaxTodo" title="确定要更改当前商编状态吗?"><span>启用/禁用</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="client_no">商户号</th>
				<th width="10%" orderField="client_name">商户名称</th>
				<th width="10%" orderField="agent_name">代理商</th>
				<th width="10%" orderField="name">通道</th>
				<th width="10%" orderField="account_name">结算人</th>
				<th width="10%" orderField="add_man">添加人</th>
				<th width="10%" orderField="add_date">添加日期</th>
				<th width="10%" orderField="add_time">添加时间</th>
				<th width="10%" orderField="bid">通道编号</th>
				<th width="5%" orderField="bind_type">类型</th>
				<th width="5%" orderField="status">状态</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td target="cn" rel="${(list.CLIENT_NAME)!}">${(list.CLIENT_NO)!}</td>
					<td target="st" rel="${(list.STATUS)!}">${(list.CLIENT_NAME)!}</td>
					<td >${(list.AGENT_NAME)!}</td>
					<td >${(list.NAME)!}</td>
					<td >${(list.ACCOUNT_NAME)!}</td>
					<td >${(list.ADD_MAN)!}</td>
					<td >${(list.ADD_DATE)!}</td>
					<td >${(list.ADD_TIME)!}</td>
					<td >${(list.BID)!}</td>
					<td ><#if list.BIND_TYPE == 0 >大商编<#else>一对一</#if>[${(list.BIND_TYPE)!}]</td>
					<td ><#if list.STATUS == 0 >启用<#else>禁用</#if>[${(list.STATUS)!}]</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

