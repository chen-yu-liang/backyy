
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">商户编号/渠道编号</label>
					<input type="text" name="c_objectno" value="${(channelPoolMapper.c_objectno)!}"/>
				</p>
				<p>
					<label style="width:60px;">1 商户编号 2渠道编号</label>
					<input type="text" name="c_type" value="${(channelPoolMapper.c_type)!}"/>
				</p>
				<p>
					<label style="width:60px;">池子编号</label>
					<input type="text" name="c_pid" value="${(channelPoolMapper.c_pid)!}"/>
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

