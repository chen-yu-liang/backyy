<form id="pagerForm" action="${(projectName)!}/?spm=${(urlEncrption('/BusinessId/list'))!}" method="post">
<input type="hidden" name="pageNum" value="${(p.pageNo)!"1"}"/>
<input type="hidden" name="totalRecord" value="${(p.totalRecord)!"0"}"/>
<input type="hidden" name="numPerPage" value="${(p.pageSize)!"20"}"/>
<input type="hidden" name="orderField" value="${(p.orderField)!""}" /><!--【可选】查询排序-->
<input type="hidden" name="orderDirection" value="${(p.orderDirection)!""}" /><!--【可选】升序降序-->
<input type="hidden" name="carte_id" value="${(carte_id)! }"/>
<#if p??>
<#list p.params?keys as testKey> 
	<input type="hidden" name="${testKey}" value="${(p.params)[testKey]!''}"/>
</#list>
</#if>
</form>
<#include "/common/pageForm.ftl">
<#assign product_type=getCache("b_product_type")>
<div class="pageHeader">
	<form onsubmit="return dialogSearch(this);" action="${(projectName)!}/?spm=${(urlEncrption('/BusinessId/list'))!}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							交易类型:
						<select id="deal_type" name="deal_type"   selectvl="${(p.params.deal_type)!''}"   >
							<option value="">--请选择--</option>
							<#list basepro as key>
								<option value="${(key.pro_no)!''}">${(key.pro_name)!''}</option>
							</#list>
	          			</select>
							<input type="hidden" name="mch_id" value="${(p.params.mch_id)!''}" size=15/>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&mch_id=${(p.params.mch_id)!''}" target="dialog" rel="BusinessId_add" width="450"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}" target="dialog"  width="450" rel="BusinessId_add" title="修改-{id}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete'))!}&id={id}" target="ajaxTodo" title="确定要删除【{id}】吗?" callback = "ourAjaxDone"><span>删除</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="mch_id">上游商户号</th>
				<th width="10%" orderField="buss_id">业务代码</th>
				<th width="10%" orderField="deal_type">交易类型 </th>
				<th width="10%" orderField="status">状态 </th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.MCH_ID)!}</td>
					<td >${(list.BUSS_ID)!}</td>
					<td >${(list.PRO_NAME)!}</td>
					<td ><#if list.STATUS == 0>启用<#else>禁用</#if>[${(list.STATUS)!}]</td>
				</tr>
			</#list>
		</tbody>
	</table>
<div class="panelBar">
		<div class="pages">
			<span>显示</span>
			<select name="numPerPage" onChange="dialogPageBreak({numPerPage:this.value})" selectvl="${(p.pageSize)!}">
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="200">200</option>
			</select>
			<span>共${(p.totalRecord)!'0'}条     &nbsp;&nbsp;第${(p.pageNo)!'0'}/${(p.totalPage)!'0'}页</span>
		</div>
	<div class="pagination" targetType="dialog" totalCount="${(p.totalRecord)!}" numPerPage="${(p.pageSize)!}" pageNumShown="10" currentPage="${(p.pageNo)!}"></div></div>	
</div>

