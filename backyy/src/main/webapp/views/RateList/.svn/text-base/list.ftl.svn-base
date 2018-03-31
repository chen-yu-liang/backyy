
<#include "/common/pageForm.ftl">
<#assign product_type=getCache("b_product_type")>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="450"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}" target="dialog"  width="450" rel="BaseinfoClass_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete'))!}&id={id}" target="ajaxTodo" callback = "ourAjaxDone" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="rate_no">费率代号</th>
				<th width="10%" orderField="rate_type">费率类型</th>
				<th width="10%" orderField="product_type">产品类型 </th>
				<th width="10%" orderField="add_user">添加人</th>
				<th width="10%" orderField="add_time">操作时间</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.RATE_NO)!}</td>
					<td ><#if list.RATE_TYPE == 0>S0<#else>T1</#if></td>
					<td >${product_type[(list.PRODUCT_TYPE)!?c]["INFO"]}</td>
					<td >${(list.ADD_USER)!}</td>
					<td >${(list.ADD_TIME)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

