
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							凭证号:<input type="text" name="serial" value="${(p.params.serial)!''}" size=25/>
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
	<table class="table" width="98%" layoutH="85">
		<thead>
			<tr>
				<th width="10%" orderField="serial">唯一凭证号</th>
				<th width="5%" orderField="amount">交易金额</th>
				<th width="10%" orderField="service">交易类型</th>
				<th width="10%" orderField="localdate">交易时间</th>
				<th width="10%" orderField="client_no">商户号</th>
				<th width="10%" orderField="client_name">商户名</th>
				<th width="10%" orderField="req_did">商户订单号</th>
				<th width="10%" orderField="account_card_no">结算卡号</th>
				<th width="10%" orderField="account_name">结算账户名</th>
				<th width="10%" orderField="account_bank_name">结算行</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.SERIAL)!}</td>
					<td >${(list.AMOUNT)!}</td>
					<td >${(list.SERVICE)!}</td>
					<td >${(list.LOCALDATE)!}</td>
					<td >${(list.CLIENT_NO)!}</td>
					<td >${(list.CLIENT_NAME)!}</td>
					<td >${(list.REQ_DID)!}</td>
					<td >${(list.ACCOUNT_CARD_NO)!}</td>
					<td >${(list.ACCOUNT_NAME)!}</td>
					<td >${(list.ACCOUNT_BANK_NAME)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

