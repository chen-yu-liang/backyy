
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							ID:<input type="text" name="Id" value="${(p.params.xingming)!''}" size=15/>
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
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add?id={id}'))!}" target="dialog"  width="450" rel="BaseinfoClass_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete?id={id}'))!}" target="ajaxTodo" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="8%" orderField="pay_serial">结算流水号</th>
				<th width="8%" orderField="account_bank_no">开户行支付系统行号</th>
				<th width="6%" orderField="deal_begin_date">交易起日期</th>
				<th width="6%" orderField="add_data">添加日期</th>
				<th width="5%" orderField="account_name">结算名</th>
				<th width="8%" orderField="pay_bank">出款通道银行</th>
				<th width="8%" orderField="object_no">对象编号（代理或者商户编号 ）</th>
				<th width="6%" orderField="pay_money">结算金额</th>
				<th width="6%" orderField="deal_end_date">交易终日期</th>
				<th width="8%" orderField="pay_order">打款单号</th>
				<th width="8%" orderField="account_card_no">结算卡号</th>
				<th width="5%" orderField="pay_type">出款类型</th>
				<th width="8%" orderField="pay_bank_serial">上游出款流水号</th>
				<th width="5%" orderField="status">状态 </th>
				<th width="8%" orderField="check_value">校验值</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.PAY_SERIAL)!}</td>
					<td >${(list.ACCOUNT_BANK_NO)!}</td>
					<td >${(list.DEAL_BEGIN_DATE)!}</td>
					<td >${(list.ADD_DATA)!}</td>
					<td >${(list.ACCOUNT_NAME)!}</td>
					<td >${(list.PAY_BANK)!}</td>
					<td >${(list.OBJECT_NO)!}</td>
					<td >${(list.PAY_MONEY)!}</td>
					<td >${(list.DEAL_END_DATE)!}</td>
					<td >${(list.PAY_ORDER)!}</td>
					<td >${(list.ACCOUNT_CARD_NO)!}</td>
					<td ><#if list.PAY_TYPE==0>清算款<#else>分润款</#if>[${(list.PAY_TYPE)!}]</td>
					<td >${(list.PAY_BANK_SERIAL)!}</td>
					<td ><#if list.STATUS==0>成功<#else>失败</#if>[${(list.STATUS)!}]</td>
					<td >${(list.CHECK_VALUE)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

