
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">池子ID</label>
					<input type="text" name="c_pid" value="${(channelPoolDetails.c_pid)!}"/>
				</p>
				<p>
					<label style="width:60px;">商编ID</label>
					<input type="text" name="c_bid" value="${(channelPoolDetails.c_bid)!}"/>
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

