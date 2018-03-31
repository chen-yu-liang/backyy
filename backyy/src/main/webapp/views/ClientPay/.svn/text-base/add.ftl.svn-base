
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">结算流水号（索引，unique）</label>
					<input type="text" name="pay_serial" value="${(clientPay.pay_serial)!}"/>
				</p>
				<p>
					<label style="width:60px;">状态 -1失败，0成功</label>
					<input type="text" name="status" value="${(clientPay.status)!}"/>
				</p>
				<p>
					<label style="width:60px;">开户行支付系统行号</label>
					<input type="text" name="account_bank_no" value="${(clientPay.account_bank_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">交易起日期</label>
					<input type="text" name="deal_begin_date" value="${(clientPay.deal_begin_date)!}"/>
				</p>
				<p>
					<label style="width:60px;">添加日期</label>
					<input type="text" name="add_data" value="${(clientPay.add_data)!}"/>
				</p>
				<p>
					<label style="width:60px;">结算名</label>
					<input type="text" name="account_name" value="${(clientPay.account_name)!}"/>
				</p>
				<p>
					<label style="width:60px;">出款通道银行</label>
					<input type="text" name="pay_bank" value="${(clientPay.pay_bank)!}"/>
				</p>
				<p>
					<label style="width:60px;">对象编号（代理或者商户编号 ）</label>
					<input type="text" name="object_no" value="${(clientPay.object_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">结算金额</label>
					<input type="text" name="pay_money" value="${(clientPay.pay_money)!}"/>
				</p>
				<p>
					<label style="width:60px;">交易终日期</label>
					<input type="text" name="deal_end_date" value="${(clientPay.deal_end_date)!}"/>
				</p>
				<p>
					<label style="width:60px;">打款单号</label>
					<input type="text" name="pay_order" value="${(clientPay.pay_order)!}"/>
				</p>
				<p>
					<label style="width:60px;">结算卡号</label>
					<input type="text" name="account_card_no" value="${(clientPay.account_card_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">出款类型0清算款，1分润款</label>
					<input type="text" name="pay_type" value="${(clientPay.pay_type)!}"/>
				</p>
				<p>
					<label style="width:60px;">上游出款流水号</label>
					<input type="text" name="pay_bank_serial" value="${(clientPay.pay_bank_serial)!}"/>
				</p>
				<p>
					<label style="width:60px;">校验值</label>
					<input type="text" name="check_value" value="${(clientPay.check_value)!}"/>
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

