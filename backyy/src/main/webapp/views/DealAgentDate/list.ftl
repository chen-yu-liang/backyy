
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							代理商名称:<input type="text" name="agent_name" value="${(p.params.agent_name)!''}" size=15/>
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
	<!--
		<ul class="toolBar">
		<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/dosummary'))!}" target="ajaxTodo" ><span>汇总统计</span></a></li>
		<span  style="float:right;" >总金额：<strong>${(count.ant?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总清算金额：<strong>${(count.cant?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总笔数：<strong>${(count.num)!''}</strong>笔&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总分润：<strong>${(count.apro?number?string.currency)!''}</strong></span>
		</ul>
	-->
	</div>
	<table class="table" width="100%" layoutH="109">
		<thead>
			<tr>
				<th width="8%" orderField="deal_date">日期</th>
				<th width="8%" orderField="agent_name">机构</th>
				<th width="8%" orderField="amn">交易金额</th>
				<th width="8%" orderField="cnt">交易笔数</th>
				<th width="8%" orderField="mamn">最大交易金额</th>
				<th width="8%" orderField="miamn">最小交易金额</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.DEAL_DATE)!}</td>
					<td >${(list.AGENT_NAME)!}</td>
					<td >${(list.AMN)!}</td>
					<td >${(list.CNT)!}</td>
					<td >${(list.MAMN)!}</td>
					<td >${(list.MIAMN)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

