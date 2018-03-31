
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('Behavior/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;"></label>
					<input type="text" name="id" value="${(behavior.id)!}"/>
				</p>
				<p>
					<label style="width:60px;">添加平台 0 总后台 1 代理商平台</label>
					<input type="text" name="platform" value="${(behavior.platform)!}"/>
				</p>
				<p>
					<label style="width:60px;">添加时间</label>
					<input type="text" name="add_time" value="${(behavior.add_time)!}"/>
				</p>
				<p>
					<label style="width:60px;">行为内容</label>
					<input type="text" name="info" value="${(behavior.info)!}"/>
				</p>
				<input type="hidden" name="id" value="${(baseinfoClass.id)!}">
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

