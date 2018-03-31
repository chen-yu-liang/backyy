
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
			<!-- 
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="450"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add?id={id}'))!}" target="dialog"  width="450" rel="BaseinfoClass_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete?id={id}'))!}" target="ajaxTodo" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
			-->
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="1%" orderField="Id">序号</th>
				<th width="10%" orderField="client_no">商户编号</th>
				<th width="10%" orderField="total_money">代付总金额</th>
				<th width="10%" orderField="total_sum">代付总笔数</th>
				
				<th width="10%" orderField="clear_date">日期</th>
				<th width="10%" orderField="bill_no">对账文件编号</th>
				<th width="10%" orderField="remark">备注</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.ID)!}</td>
					<td >${(list.CLIENT_NO)!}</td>
					<td >${(list.TOTAL_MONEY*0.01)!}</td>	
					<td >${(list.TOTAL_SUM)!}</td>
				
					<td >${(list.CLEAR_DATE)!}</td>
					<td >${(list.BILL_NO)!}</td>
					<td >${(list.REMARK)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

