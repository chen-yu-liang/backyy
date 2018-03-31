
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:90px;">产品名称</label>
					<input type="text" name="pro_name" value="${(busiProduct.pro_name)!}"/>
				</p>
				<p>
					<label style="width:90px;">service关键字</label>
					<input type="text" name="pro_service" value="${(busiProduct.pro_service)!}"/>
				</p>
				<p>
					<label style="width:90px;">产品编号</label>
					<input type="text" name="pro_no" value="${(busiProduct.pro_no)!}"/>
				</p>
				<input type="hidden" name="id" value="${(busiProduct.id)!}">
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

