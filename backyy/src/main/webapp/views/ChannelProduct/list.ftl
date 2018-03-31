
<#include "/common/pageForm.ftl">
<#assign product_type=getCache("b_product_type")>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							通道:
							<select name="tbid" selectvl="${(p.params.tbid)!''}" >
								<option value="">请选择</option>
								<#list parent as key >
									<option value="${(key.id)!}">${(key.name)!}</option>
								</#list>
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
			<#if p.params.tbid??>
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&tbid=${(p.params.tbid)!''}" target="dialog" rel="BaseinfoClass_add" width="450"><span>添加</span></a></li>
			</#if>
			<!--
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add?id={id}'))!}" target="dialog"  width="450" rel="BaseinfoClass_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete?id={id}'))!}" target="ajaxTodo" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
			-->
		</ul>
	</div>
	<table class="table" width="98%" layoutH="110">
		<thead>
			<tr>
				<th width="10%" orderField="tbid">通道编号</th>
				<th width="10%" orderField="name">通道名称</th>
				<th width="10%" orderField="product_name">通道产品</th>
				<th width="10%" orderField="product_no">通道产品编号</th>
				<th width="10%" orderField="card_type">卡类型</th>
				<th width="10%" orderField="rate">成本费率</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.TBID)!}</td>
					<td >${(list.NAME)!}</td>
					<td >${product_type[(list.PRODUCT_NO)!?c]["INFO"]}</td>
					<td >${(list.PRODUCT_NO)!}</td>
					<td ><#if list.CARD_TYPE == 0>贷记卡<#else>借记卡</#if>[${(list.CARD_TYPE)!}]</td>
					<td >${(list.RATE)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

