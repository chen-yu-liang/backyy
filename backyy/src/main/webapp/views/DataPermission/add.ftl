<div class="pageContent">
	<form method="post" action="${baseClass}/save" class="pageForm required-validate" onsubmit="return validateCallback(this,dataSave);">
		<div class="pageFormContent" layoutH="50">
			<p style="width:100%">
				<label>权限名称：</label>
				<input name="name" value="${(dataPermission.name)!}" class="required" type="text" size="30"  alt="请输入权限名称" /><span class="info" style="margin-left:10px">如：代理商编号</span>
				<!--菜单ID-->
				<input type="hidden" name="carte_id" value="${(carte_id)!}"  />
				<!--主键id -->
				<input type="hidden" name="id" value="${(dataPermission.id)!}"/>
				<!-- 按钮Id -->
				<input type="hidden" name="button_id" value="${(dataPermission.button_id)!}"/>
			</p>
			<div class="divider"></div>
			<p style="width:100%">
				<label>条件：</label>
		        <input name="condition"  value="${(dataPermission.condition)!}" class="required" type="text" size="30"  alt="请输入条件" /><span class="info" style="margin-left:10px">如：agent_num in ('[v1]')</span>
				
			</p>
			<div class="divider"></div>
			<p style="width:100%">
				<label>显示模式：</label>
				<select name="show_model">
					<option value="0" <#if ((dataPermission.show_model)!)?string == '0'>selected</#if>>文本</option>
					<option value="1" <#if ((dataPermission.show_model)!)?string == '1'>selected</#if>>下拉列表</option>
					<option value="2" <#if ((dataPermission.show_model)!)?string == '2'>selected</#if>>复选框</option>
				</select>
			</p>
			<div class="divider"></div>
			<p style="width:100%">
				<label>默认值：</label>				
				<input name="auto_data" value="${(dataPermission.auto_data)!}" type="text" size="30" alt="请输入默认值" />
			</p>
			<div class="divider"></div>
			<p style="width:100%">
				<label>显示方式：</label>
				<select name="auto_data_type">
					<option value="0" <#if ((dataPermission.auto_data_type)!)?string =='0'>selected</#if>>无</option>
					<option value="1" <#if ((dataPermission.auto_data_type)!)?string =='1'>selected</#if> >文本</option>
					<option value="2" <#if ((dataPermission.auto_data_type)!)?string =='2'>selected</#if>>SQL</option>
					<option value="3" <#if ((dataPermission.auto_data_type)!)?string =='3'>selected</#if>>缓存</option>
				</select>
			</p>	
			<div class="divider"></div>
			<p style="width:100%">
			   <label>是否启用：</label>
			   <select name="status">
				   <option value="0" <#if ((dataPermission.status)!)?string == '0' >selected</#if>>启用</option>
				   <option value="1" <#if ((dataPermission.status)!)?string == '1'>selected</#if>>禁用</option>
			   <select>
			</p>
			<div class="divider"></div>
			<p style="width:100%">
				<label>权限说明：</label>				
				<textarea name="rim" value="${(dataPermission.rim)!}" value="312312" id="textfield" cols="40" rows="4">${(dataPermission.rim)!}</textarea>
			</p>		
		
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">关闭</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>