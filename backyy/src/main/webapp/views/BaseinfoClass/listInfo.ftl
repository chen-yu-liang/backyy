<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('BaseinfoClass/addInfo'))!}&class_en=${class_en}" mask="true" target="dialog" rel="baseinfo_add" width="450"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('BaseinfoClass/addInfo'))!}&id={id}" target="dialog" mask="true"  width="450" rel="baseinfo_add" title="修改-{info}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('BaseinfoClass/deleteInfo'))!}&id={id}" target="ajaxTodo" title="确定要删除【{info}】吗?" callback = "ourAjaxDone"><span>删除</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="60">
		<thead>
			<tr>				
				<th width="10%" >信息值</th>
				<th width="10%" >信息标识</th>
				<th width="10%" >添加人</th>
				<th width="15%" >添加时间</th>
				<th width="10%" >是否启用</th>		
			</tr>
		</thead>
		<tbody>
			<#list list as rs>
				<tr target="id" rel="${rs.ID}">
					<td target="info" rel="${rs.INFO}">${(rs.INFO)!}</td>
					<td >${(rs.INFO_EN)!}</td>
					<td >${(rs.ADDNAME)!}</td>
					<td >${(rs.ADDTIME)!}</td>					
					<td ><#if rs.STATUS==1>启用<#else>禁用</#if></td>
				</tr>
			</#list>
		</tbody>
	</table>
</div>

