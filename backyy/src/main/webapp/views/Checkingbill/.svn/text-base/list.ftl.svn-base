
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
							对账日期：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
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
		</ul>
	</div>
	<table class="table" width="100%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="bill_no">文件编号</th>
				<th width="10%" orderField="txtname">文件名</th>
				<th width="10%" orderField="client_no">商户号</th>
				<th width="10%" orderField="toal_money">总结算金额</th>
				<th width="6%" orderField="toal_amount">总交易金额</th>
				<th width="6%" orderField="trade_count">总交易笔数</th>
				<th width="6%" orderField="toal_charge">总手续费</th>
				<th width="8%" orderField="trade_date">对账日期</th>
				<th width="8%" orderField="add_date">插入日期</th>
				<th width="8%" orderField="remark">备注</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.BILL_NO)!}</td>
					<td >${(list.TXTNAME)!}</td>
					<td >${(list.CLIENT_NO)!}</td>
					<td >${(list.TOAL_MONEY)!}</td>
					<td >${(list.TOAL_AMOUNT)!}</td>
					<td >${(list.TRADE_COUNT)!}</td>
					<td >${(list.TOAL_CHARGE)!}</td>
					<td >${(list.TRADE_DATE)!}</td>
					<td >${(list.ADD_DATE)!}</td>
					<td >${(list.REMARK)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

