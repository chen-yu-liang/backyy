<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('Permission/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, saveOrUpdateDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset style = "height:500px;">
				<input name="id" value="${(permission.id)!}"  type="hidden" />
				<input name="carte_id" value="${(carte_id) }"  type="hidden" />
				<p>
					<label style="width:auto;">按钮名称:</label>
					<input type="text" name="button_name" value="${(permission.button_name)!}" class = "required"/>
					<span class="information" style="margin-left:10px">如:添加菜单</span>
				</p>
				<p>
					<label style="width:auto;">按钮路径:</label>
					<input type="text" name="href" value="${(permission.href)!}" class = "required"/>
					<span class="information" style="margin-left:10px">如:permission/add</span>
				</p>
				<p>
					<label style="width:auto;">表单路径:</label>
					<input type="text" name="lower_href" value="${(permission.lower_href)!}" class = "required"/>
					<span class="information" style="margin-left:10px;">如果没有地址,则填写#</span>
				</p>
				<p>
					<label style="width:auto;">是否启用:</label>
					<input type="radio" name="status" value = "1" checked selectvl = "${(permission.status)!}" />启用
					<input type="radio" name="status" value = "0" />禁用
				</p>
				<p>
					<label style="width:auto;">行为名称:</label>
					<input type="text" name="behavior" value="${(permission.behavior)!}"/>
					<span class="information" style="margin-left:10px">如名称不填写则不记录行为名称</span>
				</p>
				<p>
					<label style="width:auto;">行为参数:</label>
					<textarea cols = "60" rows = "8" name = "behavior_args">${(permission.behavior_args)!}</textarea>
					<br/>
					<span class="information" style="margin-left:10px">模板格式:args=null!添加!添加商户信息&args=abc(abc代表任意值)!修改!修改商户信息</span>
					<br/>
					<span class="information" style="margin-left:10px">注释:多个行为内容以&分割,行为内容不同参数以!分割</span>
					<br/>
					<span class="information" style="margin-left:10px">第一个参数:通过此参数确认行为内容</span>
					<br/>
					<span class="information" style="margin-left:10px">第二个参数:行为类别名称</span>
					<br/>
					<span class="information" style="margin-left:10px">第三个参数:行为内容,需要替换下以[字段名]为格式,例:用户[client_name]添加商户</span>
				</p>
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

