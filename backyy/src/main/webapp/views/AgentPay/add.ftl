
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">申请时的金额（包含代付手续费）</label>
					<input type="text" name="pay_amount" value="${(agentPay.pay_amount)!}"/>
				</p>
				<p>
					<label style="width:60px;">订单编号</label>
					<input type="text" name="order_seq" value="${(agentPay.order_seq)!}"/>
				</p>
				<p>
					<label style="width:60px;">支付状态 0，未支付，1支付中，2支付成功 ，3支付失败</label>
					<input type="text" name="status" value="${(agentPay.status)!}"/>
				</p>
				<p>
					<label style="width:60px;">结算卡开户行号</label>
					<input type="text" name="account_bank_no" value="${(agentPay.account_bank_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">代付流水</label>
					<input type="text" name="tran_seq" value="${(agentPay.tran_seq)!}"/>
				</p>
				<p>
					<label style="width:60px;">存档时间</label>
					<input type="text" name="file_date" value="${(agentPay.file_date)!}"/>
				</p>
				<p>
					<label style="width:60px;">结算名</label>
					<input type="text" name="account_name" value="${(agentPay.account_name)!}"/>
				</p>
				<p>
					<label style="width:60px;"></label>
					<input type="text" name="id" value="${(agentPay.id)!}"/>
				</p>
				<p>
					<label style="width:60px;">支付金额</label>
					<input type="text" name="pay_money" value="${(agentPay.pay_money)!}"/>
				</p>
				<p>
					<label style="width:60px;">结算帐号</label>
					<input type="text" name="account_card_no" value="${(agentPay.account_card_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">提现类型</label>
					<input type="text" name="pay_type" value="${(agentPay.pay_type)!}"/>
				</p>
				<p>
					<label style="width:60px;">出帐时间</label>
					<input type="text" name="pay_date" value="${(agentPay.pay_date)!}"/>
				</p>
				<p>
					<label style="width:60px;">代付手续费</label>
					<input type="text" name="pay_charge" value="${(agentPay.pay_charge)!}"/>
				</p>
				<p>
					<label style="width:60px;">代理编号</label>
					<input type="text" name="agent_no" value="${(agentPay.agent_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">结算卡开户行号</label>
					<input type="text" name="account_bank_name" value="${(agentPay.account_bank_name)!}"/>
				</p>
				<p>
					<label style="width:60px;">批次号</label>
					<input type="text" name="batch_no" value="${(agentPay.batch_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">账户类型  1对公</label>
					<input type="text" name="account_type" value="${(agentPay.account_type)!}"/>
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

