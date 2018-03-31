
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
				<th width="10%" orderField="Id"></th>
				<th width="10%" orderField="account_card_no">结算卡号</th>
				<th width="10%" orderField="account_bank_no">开户行支付系统行号</th>
				<th width="10%" orderField="status"> -1冻结,0未启用，1启用</th>
				<th width="10%" orderField="object_id">对象编号(商户或者代理编号)</th>
				<th width="10%" orderField="add_time">最后修改时间</th>
				<th width="10%" orderField="add_user">最后修改人</th>
				<th width="10%" orderField="check_value">校验值，把账号信息按规则加密生成的，用于校验是否被篡改</th>
				<th width="10%" orderField="account_type">账户类型 0商户账户，1代理商账户</th>
				<th width="10%" orderField="account_name">结算名</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.ID)!}</td>
					<td >${(list.ACCOUNT_CARD_NO)!}</td>
					<td >${(list.ACCOUNT_BANK_NO)!}</td>
					<td >${(list.STATUS)!}</td>
					<td >${(list.OBJECT_ID)!}</td>
					<td >${(list.ADD_TIME)!}</td>
					<td >${(list.ADD_USER)!}</td>
					<td >${(list.CHECK_VALUE)!}</td>
					<td >${(list.ACCOUNT_TYPE)!}</td>
					<td >${(list.ACCOUNT_NAME)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

