
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;"></label>
					<input type="text" name="id" value="${(checkingbill.id)!}"/>
				</p>
				<p>
					<label style="width:60px;">总结算金额</label>
					<input type="text" name="toal_money" value="${(checkingbill.toal_money)!}"/>
				</p>
				<p>
					<label style="width:60px;">对账日期</label>
					<input type="text" name="trade_date" value="${(checkingbill.trade_date)!}"/>
				</p>
				<p>
					<label style="width:60px;">备注</label>
					<input type="text" name="remark" value="${(checkingbill.remark)!}"/>
				</p>
				<p>
					<label style="width:60px;">文件名称</label>
					<input type="text" name="txtname" value="${(checkingbill.txtname)!}"/>
				</p>
				<p>
					<label style="width:60px;">总交易金额</label>
					<input type="text" name="toal_amount" value="${(checkingbill.toal_amount)!}"/>
				</p>
				<p>
					<label style="width:60px;">插入日期</label>
					<input type="text" name="add_date" value="${(checkingbill.add_date)!}"/>
				</p>
				<p>
					<label style="width:60px;">商户号</label>
					<input type="text" name="client_no" value="${(checkingbill.client_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">总交易笔数</label>
					<input type="text" name="trade_count" value="${(checkingbill.trade_count)!}"/>
				</p>
				<p>
					<label style="width:60px;">文件编号（唯一）</label>
					<input type="text" name="bill_no" value="${(checkingbill.bill_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">总手续费</label>
					<input type="text" name="toal_charge" value="${(checkingbill.toal_charge)!}"/>
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

