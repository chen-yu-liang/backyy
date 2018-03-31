
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
							交易时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
							--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
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
		<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('${action}/exportAgentProfit'))!}&begintime=${(p.params.begintime)!''}&endtime=${(p.params.endtime)!''}&agent_no=${(p.params.agent_no)!''}"><span>导出分润信息</span></a></li>
		<span style="float:right;" >总金额：<strong>${(count.ant?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总手续费：<strong>${(count.cant?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;代理商总手续费：<strong>${(count.aco?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总笔数：<strong>${(count.num)!''}</strong>笔&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总分润：<strong>${(count.apro?number?string.currency)!''}</strong></span>		
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="amount">交易金额</th>
				<th width="10%" orderField="client_charge">手续费</th>
				<th width="10%" orderField="agent_no">代理商编号</th>
				<th width="10%" orderField="agent_name">代理商名称</th>
				<th width="10%" orderField="add_date">交易日期</th>
				<th width="10%" orderField="agent_profit">代理分润</th>
				<th width="10%" orderField="deal_date">清算日期</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.AMOUNT)!}</td>
					<td >${(list.CLIENT_CHARGE)!}</td>
					<td >${(list.AGENT_NO)!}</td>
					<td >${(list.AGENT_NAME)!}</td>
					<td >${(list.ADD_DATE)!}</td>
					<td >${(list.AGENT_PROFIT)!}</td>
					<td >${(list.DEAL_DATE)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

