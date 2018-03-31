<#assign agent_style=getCache("b_agent_style")>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<legend>机构信息</legend>
				<legend>-----------------------------------------------------------------------------------------------------------------------------</legend>
				<p>
					<label style="width:120px;">机构名称:</label>
					<td>${(agent.agent_name)!}</td>
				</p>
				<p>
					<label style="width:120px;">机构号:</label>
					<td>${(agent.agent_no)!}</td>
				</p>
			</fieldset>	
			<fieldset>
				<legend>交易接口参数</legend>
				<legend>-----------------------------------------------------------------------------------------------------------------------------</legend>
				<p>
					<label style="width:120px;">网址:</label>
					<td>http://39.106.31.123:14080/paymentgate/pay</td>
				</p>
				<p>
					<label style="width:120px;">交易秘钥：</label>
					<td>${(clientbase.client_uuid)!}</td>
				</p>
			</fieldset>	
			<fieldset>	
				<legend>代理商平台</legend>
				<legend>-----------------------------------------------------------------------------------------------------------------------------</legend>
				<p>
					<label style="width:120px;">网址:</label>
					<td>http://39.106.52.246:12080/agentyy</td>
				</p>
				<p>
					<label style="width:120px;">登录账号：</label>
					<td>${(agent.agent_no)!}</td>
				</p>
				<p>
					<label style="width:120px;">登录密码(默认)：</label>
					<td>123456</td>
				</p>
			</fieldset>
			<fieldset>
				<legend>代付接口参数</legend>
				<legend>-----------------------------------------------------------------------------------------------------------------------------</legend>
				<p>
					<label style="width:120px;">地址：</label>
					<td>39.106.31.123</td>
				</p>
				<p>
					<label style="width:120px;">端口：</label>
					<td>13080</td>
				</p>
				<p>
					<label style="width:120px;">公共秘钥：</label>
					<td>AADDCCFF11223344</td>
				</p>
				<p>
					<label style="width:120px;">代付秘钥：</label>
					<td>${(clientbase.pay_key)!}</td>
				</p>
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

