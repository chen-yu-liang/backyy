
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('BehaviorModel/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;"></label>
					<input type="text" name="id" value="${(behaviorModel.id)!}"/>
				</p>
				<p>
					<label style="width:60px;">行为模板</label>
					<input type="text" name="behavior_args" value="${(behaviorModel.behavior_args)!}"/>
				</p>
				<p>
					<label style="width:60px;">状态 0启用 1禁用</label>
					<input type="text" name="status" value="${(behaviorModel.status)!}"/>
				</p>
				<p>
					<label style="width:60px;">行为名称</label>
					<input type="text" name="behavior_name" value="${(behaviorModel.behavior_name)!}"/>
				</p>
				<p>
					<label style="width:60px;">按钮id</label>
					<input type="text" name="per_id" value="${(behaviorModel.per_id)!}"/>
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

