
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset style = "height:50px;">
				<p>
					<label style="width:60px;">商编池名称</label>
					<input type="text" name="c_name" class = "required" value="${(channelPool.c_name)!}"/>
				</p>
				<p>
					<label style="width:60px;">等级</label>
					<input type="text" name="c_level" class = "required" size = "15" value="${(channelPool.c_level)!}"/>
					<span class = "info">等级正序，基数约大等级越低</span>
				</p>
				<p>
					<label style="width:60px;">状态</label>
					<select name = "c_status" selectvl = "${(channelPool.c_status)!}">
						<option value = "0">启用</option>
						<option value = "1">禁用</option>
					</select>
				</p>
				<p>
					<label style="width:60px;">备注</label>
					<input type="text" name="c_remark" style = "height:50px;" size = "25" value="${(channelPool.c_remark)!}"/>
				</p>
				<input type="hidden" name="c_id" value="${(channelPool.c_id)!}">
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

