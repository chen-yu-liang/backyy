
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">银行id</label>
					<input type="text" name="id" value="${(bankHead.id)!}"/>
				</p>
				<p>
					<label style="width:60px;">银行编号</label>
					<input type="text" name="bank_num" value="${(bankHead.bank_num)!}"/>
				</p>
				<p>
					<label style="width:60px;">银行名称</label>
					<input type="text" name="bank_name" value="${(bankHead.bank_name)!}"/>
				</p>
				<p>
					<label style="width:60px;">银行等级 0总行 1联行</label>
					<input type="text" name="grade" value="${(bankHead.grade)!}"/>
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

