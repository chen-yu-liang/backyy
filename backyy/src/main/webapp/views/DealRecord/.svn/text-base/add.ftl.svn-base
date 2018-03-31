
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">对账清算状态，0未对账，1已对账</label>
					<input type="text" name="check_status" value="${(dealRecord.check_status)!}"/>
				</p>
				<p>
					<label style="width:60px;">状态 -1失败，0成功</label>
					<input type="text" name="status" value="${(dealRecord.status)!}"/>
				</p>
				<p>
					<label style="width:60px;">商户编号</label>
					<input type="text" name="client_no" value="${(dealRecord.client_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">0微信，1支付宝</label>
					<input type="text" name="deal_type" value="${(dealRecord.deal_type)!}"/>
				</p>
				<p>
					<label style="width:60px;">交易日期</label>
					<input type="text" name="deal_date" value="${(dealRecord.deal_date)!}"/>
				</p>
				<p>
					<label style="width:60px;">打款状态，0未打款，1已打款</label>
					<input type="text" name="pay_status" value="${(dealRecord.pay_status)!}"/>
				</p>
				<p>
					<label style="width:60px;"></label>
					<input type="text" name="id" value="${(dealRecord.id)!}"/>
				</p>
				<p>
					<label style="width:60px;">交易金额</label>
					<input type="text" name="amount" value="${(dealRecord.amount)!}"/>
				</p>
				<p>
					<label style="width:60px;">交易卡号或者微信、支付宝账号标识</label>
					<input type="text" name="bank_card" value="${(dealRecord.bank_card)!}"/>
				</p>
				<p>
					<label style="width:60px;">上游流水号</label>
					<input type="text" name="bank_serial" value="${(dealRecord.bank_serial)!}"/>
				</p>
				<p>
					<label style="width:60px;"></label>
					<input type="text" name="serial" value="${(dealRecord.serial)!}"/>
				</p>
				<p>
					<label style="width:60px;">通道编号</label>
					<input type="text" name="bid" value="${(dealRecord.bid)!}"/>
				</p>
				<p>
					<label style="width:60px;">校验值</label>
					<input type="text" name="check_value" value="${(dealRecord.check_value)!}"/>
				</p>
				<p>
					<label style="width:60px;">交易时间</label>
					<input type="text" name="deal_time" value="${(dealRecord.deal_time)!}"/>
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

