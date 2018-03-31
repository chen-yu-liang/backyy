<script>
	function getBid(){
		var ids = "";
		var pids = "";
		navTab.getCurrentPanel().find("input:checked").filter("[name='ids']").each(function(i){
			var val = $(this).val();
			ids += i==0 ? val : ","+val;
		});
		if(ids!=""){
			$.pdialog.open("${(projectName)!}/?spm=${(urlEncrption('/ChannelPool/getBussiness'))!}&sign=1&ids="+ids,"getBussiness", "请选择加入商编池",{mask:true,width:335,height:170});
			
		}else{
			alertMsg.info("请选择商编信息");
		}
	}
</script>
<#include "/common/pageForm.ftl">
<#assign product_type=getCache("b_product_type")>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							渠道商户号:<input type="text" name="mch_id" value="${(p.params.mch_id)!''}" size=15/>
						</td>
						<td>
							通道:
							<select name="c_pid" selectvl="${(p.params.c_pid)!''}" >
								<option value="">请选择</option>
								<#list parent as key >
									<option value="${(key.id)!}">${(key.name)!}</option>
								</#list>
							</select>
						</td>
						<td>
							优先级:<input type="text" name="c_level" value="${(p.params.c_level)!''}" size=15/>
						</td>
						<td>
							清算类型:
							<select name="settletype" selectvl="${(p.params.settletype)!''}" >
								<option value="">请选择</option>
								<option value="T0">T0</option>
								<option value="T1">T1</option>
							</select>
						</td>
						<td>
							状态:
							<select name="status" selectvl="${(p.params.status)!''}" >
								<option value="">请选择</option>
								<option value=0>启用</option>
								<option value=1>禁用</option>
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
			<li><a class="add" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/channelExport'))!}" target="dialog" rel="channelExport" width="500"><span>导入</span></a></li>
			<li><a class="edit" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}" target="dialog"  width="450" height="400" rel="ChannelDetails_add" title="修改-{id}"><span>修改</span></a></li>
			<li><a class="edit" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/openOrClose'))!}&c_id={id}&status={status}" target="ajaxTodo" title="确定要更改当前商编状态吗?<br>当前状态为【{status}】"><span>禁用/启用</span></a></li>
			<li><a class="edit" onclick ="getBid();" ><span>加入商编池</span></a></li>
			<li><a class="edit" href="${(projectName)!}/?spm=${(urlEncrption('/BusinessId/list'))!}&mch_id={mch_id}" target="dialog"  width="800" height="550" rel="BusinessId_list" title="查询{mch_id}业务代码"><span>业务代码</span></a></li>
		</ul>
	</div>
	<table class="table" width="110%" layoutH="109">
		<thead>
			<tr>
				<th width="2%"  align="center" ><input type="checkbox" group="ids" class="checkboxCtrl"></th>
				<th width="2%" orderField="c_id">通道编号</th>
				<th width="3%" orderField="c_pid">通道父级编号</th>
				<th width="4%" orderField="mch_id">渠道商户号</th>
				<th width="4%" orderField="c_name">商编名称</th>
				<th width="8%" >支持的产品类型 </th>
				<th width="2%" orderField="settletype">清算类型 </th>
				<th width="2%" orderField="c_level">优先级</th>
				<th width="5%" orderField="privatekey">渠道商户秘钥</th>
				<th width="2%" orderField="status">状态 </th>
				<th width="3%" orderField="dayCountMoney">单日最大限额</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.C_ID)!}">
					<td target="status" rel="${(list.STATUS)!}"><input name="ids" type="checkbox" value="${(list.C_ID)!}"></td>
					<td target="mch_id" rel="${(list.MCH_ID)!}">${(list.C_ID)!}</td>
					<td >${(list.C_PID)!}-${(list.NAME)!}</td>
					<td >${(list.MCH_ID)!}</td>
					<td >${(list.C_NAME)!}</td>
					<td >${(list.PRO_NAME)!}</td>
					<td >${(list.SETTLETYPE)!}</td>
					<td >${(list.C_LEVEL)!}</td>
					<td >${(list.PRIVATEKEY)!}</td>
					<td ><#if list.STATUS??&&list.STATUS==0>启用<#else>禁用</#if>[${(list.STATUS)!}]</td>
					<td >${(list.DAYCOUNTMONEY)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

