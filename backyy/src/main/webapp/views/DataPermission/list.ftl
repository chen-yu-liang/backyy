<script>
	//添加数据权限回调函数
	function dataSave(json){
	   DWZ.ajaxDone(json);
		if (json.statusCode == DWZ.statusCode.ok){
			$.pdialog.closeCurrent();
			var data={"carte_id":json.jsonData};
			urlReload($("#dataPageForm"),"${(projectName)!}/?spm=${(urlEncrption('DataPermission/list'))!}",data);
		}
	}
</script>
<div class="pageContent" style = "margin-top:-12px;">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="${(projectName)!}/?spm=${(urlEncrption('${action}/add'))!}&carte_id=${(p['params']['carte_id'])!}" target="dialog" rel="DataPermission_add" width="850" height="450" ><span>添加</span></a></li>
			<li><a class="edit" href="${(projectName)!}/?spm=${(urlEncrption('${action}/add'))!}&id={id}&carte_id=${(p['params']['carte_id'])!}" target="dialog"  width="850" height="450" rel="DataPermission_update" title="修改-{id}"><span>修改</span></a></li>
			<li><a class="delete" href="${(projectName)!}/?spm=${(urlEncrption('${action}/delete'))!}&id={id}&carte_id=${(p['params']['carte_id'])!}" target="ajaxTodo" title="确定要删除【{id}】吗?" callback="dataSave"><span>删除</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="230">
		<thead>
			<tr>
				<th width="4%" orderField="Id">id</th>
				<th width="4%" orderField="carte_id">菜单id</th>
				<th width="4%" orderField="name">权限名称</th>
				<th width="8%" orderField="condition">条件</th>
				<th width="10%" orderField="auto_data">默认值</th>
				<th width="5%" orderField="status">状态(0启用1禁用)</th>
				<th width="10%" orderField="show_model">显示模式:0文本，1下拉列表，2复选框</th>
				<th width="5%" orderField="button_id">所属按钮id</th>
				<th width="10%" orderField="auto_data_type">默认值类型0无,1文本，2 sql,3 缓存</th>
				<th width="10%" orderField="rim">说明</th>
			</tr>
		</thead>
		<tbody>
			 <#list p.results as list>
				<tr target="id" rel="${list.ID}">
					<td >${(list.ID)!}</td>
					<td >${(list.CARTE_ID)!}</td>
					<td >${(list.NAME)!}</td>
					<td >${(list.CONDITION)!}</td>
					<td >${(list.AUTO_DATA)!}</td>
					<td >
					   <#if (list.STATUS)! == 0>
					                 启用
					    <#elseif (list.STATUS)! ==1>
					                 禁用
					   </#if>
					</td>
					<td >
					    <#if (list.SHOW_MODEL)! ==0>
					                  文本
					    <#elseif (list.SHOW_MODEL)! ==1>
					               下拉框
					    <#elseif (list.SHOW_MODEL)! ==2>
					               复选框
					   </#if>
					</td>
					<td >${(list.BUTTON_ID)!}</td>
					<td >
					     <#if (list.AUTO_DATA_TYPE)! == 0>
						                 无
						    <#elseif (list.AUTO_DATA_TYPE)! ==1>
						                文本
						    <#elseif (list.AUTO_DATA_TYPE)! ==2>
						     sql
						    <#elseif (list.AUTO_DATA_TYPE)! ==2>
						               缓存
					     </#if>
					</td>
					<td >${(list.RIM)!}</td>
				</tr>
			  </#list> 
		</tbody>
	</table>
</div>

