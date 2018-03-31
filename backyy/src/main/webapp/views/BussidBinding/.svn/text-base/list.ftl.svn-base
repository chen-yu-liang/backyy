
<#include "/common/pageForm.ftl">
<#assign product_type=getCache("b_product_type")>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							对象编号:<input type="text" name="object_no" value="${(p.params.object_no)!''}" size=15/>
						</td>
						<td>
							交易类型:
							<select id="deal_type" name="deal_type"  selectvl="${(p.params.deal_type)!''}" >
								<option value="">--请选择--</option>
								<#list basepro as key>
									<option value="${(key.pro_no)!''}">${(key.pro_name)!''}</option>
								</#list>
		          			</select>
						</td>
						<td>
							状态:
							<select id="status" name="status"  selectvl="${(p.params.status)!''}" >
								<option value="">--请选择--</option>
								<option value="0">启用</option>
								<option value="1">禁用</option>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="500"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/updateStatus'))!}&id={id}&statu={sta}" target="ajaxTodo" ><span>启用/禁用</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete'))!}&id={id}" target="ajaxTodo" title="确定要删除【{id}】吗?"><span>删除</span></a></li>
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/addDefault'))!}" target="dialog" rel="BaseinfoClass_add" width="500"><span>添加默认业务代码</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="object_no">代理商编号</th>
				<th width="10%" orderField="object_type">对象类型</th>
				<th width="10%" orderField="business_id">业务代码id</th>
				<th width="10%" orderField="deal_type">交易类型</th>
				<th width="10%" orderField="status">状态 </th>
				<th width="10%" orderField="mch_id">上游商户号 </th>
				<th width="10%" orderField="buss_id">业务代码 </th>
				
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td target="sta" rel="${(list.STATUS)!}">${(list.OBJECT_NO)!}</td>
					<td ><#if list.OBJECT_TYPE == 1>代理商<#else>商户</#if>[${(list.OBJECT_TYPE)!}]</td>
					<td >${(list.BUSINESS_ID)!}</td>
					<td >${(list.PRO_NAME)!}</td>
					<td ><#if list.STATUS == 0>启用<#else>禁用</#if>${(list.STATUS)!}</td>
					<td >${(list.MCH_ID)!}</td>
					<td >${(list.BUSS_ID)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

