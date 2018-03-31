
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					
					<td>
						对账文件编号：<input type="text" name="Id" value="${(p.params.xingming)!''}" size=15/>
					</td>
					<td>
						流水号:<input type="text" name="Id" value="${(p.params.xingming)!''}" size=15/>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/exportBilldata'))!}" target="dialog" rel="exportBilldata" width="500"><span>导入对账文件</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="1%" orderField="Id"></th>
				<th width="10%" orderField="paid_date">代付时间</th>
				<th width="10%" orderField="amount">代付金额</th>
				<th width="10%" orderField="money">实际代付金额</th>
				<th width="10%" orderField="rrno">流水号</th>
				<th width="10%" orderField="number_no">业务编号</th>
				<th width="10%" orderField="batch_no">批次号</th>
				<th width="10%" orderField="client_no">商户编号</th>
				<th width="10%" orderField="bill_no">对账文件编号</th>				
				
				
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.ID)!}</td>
					<td >${(list.PAID_DATE)!}</td>
					<td >${(list.AMOUNT*0.01)!}</td>
					<td >${(list.MONEY*0.01)!}</td>
					<td >${(list.RRNO)!}</td>
					<td >${(list.NUMBER_NO)!}</td>
					<td >${(list.BATCH_NO)!}</td>
					<td >${(list.CLIENT_NO)!}</td>
					<td >${(list.BILL_NO)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

