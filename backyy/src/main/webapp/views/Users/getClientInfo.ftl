<div class="pageContent" style="overflow:hidden;">
		<div class="pageFormContent" layoutH="50">
				<#list userInfo as list>
					<fieldset>
					<legend>基本信息</legend>
					<p style = "width:230px;">
						<label style="width:60px;">用户名称：</label>
						<span>${(list.CLIENT_NAME)!"暂无"}</span>
					</p>
					<p style = "width:230px;">
						<label style="width:60px;">用户代号：</label>
						<span>${(list.CLIENT_NO)!"暂无"}</span>
					</p>
					<p style = "width:230px;">
						<label style="width:60px;">创建时间：</label>
						<span>${(list.CREATE_TIME)!"暂无"}</span>
					</p>
					<p style = "width:230px;">
						<label style="width:60px;">所属对象：</label>
						<span>${(list.BELONG_NO)!"暂无"}</span>
					</p>
					</fieldset>
					<fieldset>
						<legend>账户信息</legend>
						<p style = "width:230px;">
							<label style="width:60px;">开户名：</label>
							<span>${(list.OPEN_NAME)!"暂无"}</span>
						</p>
						<p style = "width:230px;">
							<label style="width:60px;">结算账户：</label>
							<span>${(list.CARD_NO)!"暂无"}</span>
						</p>
						<p style = "width:230px;">
							<label style="width:100px;">银行预留手机号：</label>
							<span>${(list.PHONE)!"暂无"}</span>
						</p>
					</fieldset>
					<fieldset>
						<legend>资金信息</legend>
						<p  style = "width:450px;">
							<label>余额账户：</label>
							<span>可提现金额:</span>
							<span>${(list.WITHDRAW_MONEY)?default(0.00)?string(',##0.00')}元</span>
							<span>冻结金额:</span>
							<span>${(list.FREEZE_MONEY)?default(0.00)?string(',##0.00')}元</span>
							<span>总金额:</span>
							<span>${(list.ALL_MONEY)?default(0.00)?string(',##0.00')}元</span>
						</p>
						<p style = "width:450px;">
							<label>台时费账户：</label>
							<span>${(list.HOUR_MONEY)?default(0.00)?string(',##0.00')}元</span>
						</p>
						<p style = "width:450px;">
							<label>信用盾账户：</label>
							<span>${(list.MONEY)?default(0.00)?string(',##0.00')}元</span>
						</p>
						<p style = "width:450px;">
							<label>账户总金额：</label>
							<span>${(list.ACCOUNT_MONEY)?default(0.00)?string(',##0.00')}元</span>
						</p>
					</fieldset>
				</#list>
		</div>
</div>

