<script>
	//增加或者修改后执行的方法
	function saveOrUpdateDone(json){
		DWZ.ajaxDone(json);
		$.pdialog.closeCurrent();
		if(json.jsonData){
			var data = {"carte_id":json.jsonData};
			urlReload($("#btnPageForm"),"${(projectName)!}/?spm=${(urlEncrption('Permission/list'))!}",data);
		}
	}
</script>
<div class="pageHeader" style = "margin-top:-16px;">
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('Permission/add'))!}&carte_id=${(p['params']['carte_id'])!}" target="dialog" rel="BaseinfoClass_add" width="480" height="595"><span>添加按钮</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('Permission/add'))!}&id={id}&carte_id=${(p['params']['carte_id'])!}" target="dialog"  width="480" height="595" rel="BaseinfoClass_add" title="修改【{class_cn}】按钮" rowclick = "true"><span>修改按钮</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('Permission/delete'))!}&id={id}&carte_id=${(p['params']['carte_id'])!}" target="ajaxTodo" title="确定要删除【{class_cn}】按钮吗?" callback = "saveOrUpdateDone"><span>删除按钮</span></a></li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="236">
		<thead>
			<tr>
				<th width="15%" >按钮名称</th>
				<th width="15%" >按钮路径</th>
				<th width="15%" >表单路径</th>
				<th width="8%" >行为名称</th>
				<th width="10%" >行为参数</th>
				<th width="5%" >状态</th>
				<th width="10%" >添加时间</th>
			</tr>
		</thead>
		<tbody>
			<#assign status=getCache("b_status")>
			<#if p ?? >
				<#if (p.results?size > 0) >
					<#list p.results as list>
						<tr target="id" rel="${(list.ID)!}">
							<td target="class_cn" rel="${(list.BUTTON_NAME)!}">${(list.BUTTON_NAME)!}</td>
							<td >${(list.HREF)!}</td>
							<td >${(list.LOWER_HREF)!}</td>
							<td >${(list.BEHAVIOR)!}</td>
							<td ptip = "${(list.BEHAVIOR_ARGS)!}">${(list.BEHAVIOR_ARGS)!}</td>
							<td >${(status[(list.STATUS)!?c]["INFO"])!"<span style = 'color:#cccccc;'>暂无</span>"}</td>
							<td >${(list.CREATE_TIME)!}</td>
						</tr>
					</#list>
				<#else>
					<tr><td colspan = "6" style = "text-align:center;color:gray;">无按钮信息记录</td></tr>
				</#if>
			<#else>
				<tr><td colspan = "6" style = "text-align:center;color:gray;">请选择左侧子节点菜单查询该菜单下按钮</td></tr>
			</#if>
		</tbody>
	</table>
</div>

