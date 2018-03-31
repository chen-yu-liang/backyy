<form id="pagerForm" action="${(projectName)!}/?spm=${(urlEncrption('/ClientProduct/list'))!}" method="post">
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
<#assign clear_type=getCache("b_clear_type")>
<div class="pageHeader">
	<form onsubmit="return dialogSearch(this);" action="${(projectName)!}/?spm=${(urlEncrption('/ClientProduct/list'))!}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							产品:<select name = "product_no" selectvl = "${(p.params.product_no)!''}">
										<option value="">--	全部--</option>
										<#list basepro as key>
											<option value="${(key.pro_no)!''}">${(key.pro_name)!''}</option>
										</#list>
									</select>
						</td>
							<input type="hidden" name="client_no" value="${(p.params.client_no)!''}" size=15/>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id=${(p.params.client_no)!''}" target="dialog" rel="ClientProduct_add" width="450"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}&product_no={pn}&clear_type={cn}" target="dialog"  width="450" rel="ClientProduct_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete'))!}&id={id}&product_no={pn}&clear_type={cn}" target="ajaxTodo" callback = "ourAjaxDone" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="client_no">商户编号</th>
				<th width="10%" orderField="product_no">产品</th>
				<th width="10%" orderField="rate">结算费率</th>
				<th width="10%" orderField="clear_type">结算方式</th>
				<th width="10%" orderField="adddate">日期</th>
				<th width="10%" orderField="status">状态 </th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.CLIENT_NO)!}">
					<td target="pn" rel="${(list.PRODUCT_NO)!}">${(list.CLIENT_NO)!}</td>
					<td target="class_cn" rel="${(list.CLIENT_NO)!}">${(list.PRO_NAME)!}</td>
					<td target="cn" rel="${(list.CLEAR_TYPE)!}">${(list.RATE)!}</td>
					<td >${clear_type[(list.CLEAR_TYPE)!?c]["INFO"]}</td>
					<td >${(list.ADDDATE)!}</td>
					<td ><#if list.STATUS == 0>开通<#else>未开通</#if>[${(list.STATUS)!}]</td>
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

