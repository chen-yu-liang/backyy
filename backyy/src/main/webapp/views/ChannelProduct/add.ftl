
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:90px;">通道编号</label>
					<input type="text" name="tbid" readonly value="${(tbid)!}"/>
				</p>
				<p>
					<label style="width:90px;">通道产品编号</label>
					<input type="text" name="product_no" class="required" value="${(channelProduct.product_no)!}"/>
				</p>
				<p>
					<label style="width:90px;">结算类型</label>
					<select name="clear_type" class="required" selectvl="${(channelParent.clear_type)!}">
						<option value="0">T0</option>
						<option value="1">T1</option>
					</select>
				</p>
				<p>
					<label style="width:90px;">卡类型</label>
					<select name="card_type" class="required" selectvl="${(channelParent.card_type)!}">
						<option value="0">贷记卡</option>
						<option value="1">借记卡</option>
					</select>
				</p>
				<p>
					<label style="width:90px;">成本费率</label>
					<input type="text" name="rate" class="required" value="${(channelProduct.rate)!}"/>
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

