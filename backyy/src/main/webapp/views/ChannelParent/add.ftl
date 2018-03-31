
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">渠道id</label>
					<input type="text" name="id" class="required" value="${(channelParent.id)!}"/>
				</p>
				<p>
					<label style="width:60px;">优先级</label>
					<input type="text" name="level" class="required" value="${(channelParent.level)!}"/>
				</p>
				<p>
					<label style="width:60px;">渠道名称</label>
					<input type="text" name="name" class="required" value="${(channelParent.name)!}"/>
				</p>
				<p>
					<label style="width:60px;">状态</label>
					<select name="status" selectvl="${(channelParent.status)!}">
						<option value="0">启用</option>
						<option value="1">禁用</option>
					</select>
				</p>
				<input type="hidden" name="id" value="${(channelParent.id)!}">
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

