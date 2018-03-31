 <script language="javascript">
 	function checkBindClient(th){
	 	  var c_client_no=$(th).val().trim();
	 	    if(c_client_no=="")return false
	 	  var url="${(projectName)!}/?spm=${(urlEncrption("${action}/getClientInfo"))!}";	 
		  $.post(url,{c_client_no:c_client_no},function(json){
		  if(json==null){
		  	alertMsg.error("编号 ["+c_client_no+"] 商户不存在")	
		  	$("#bindClient_channel").find("input").each(function(){
		  		$(this).val("");
		  	});	  	
		  	return false;
		  }
		  $("#bindClient_channel #client_name").val(json.CLIENT_NAME);			
		  $("#bindClient_channel #account_name").val(json.ACCOUNT_NAME);		
		  $("#bindClient_channel #bind_num").val(json.BIND_NUM);				  		 
		  },"json");
 	}
 	
 	function checkChannelClient(th){
	 	  var mch_id=$(th).val().trim();
	 	  if(mch_id=="")return false
	 	  var tbid= $("#bindChannelClient #tbid").val();
	 	  var url="${(projectName)!}/?spm=${(urlEncrption("${action}/getBingClientInfo"))!}";	 
		  $.post(url,{mch_id:mch_id,tbid:tbid},function(json){
		  if(json==null){
		  	alertMsg.error("通道商编 ["+mch_id+"]不存在")	
		  	$("#bindChannelClient").find("input").each(function(){
		  		$(this).val("");
		  	});	  	
		  	return false;
		  }
		  $("#bindChannelClient #bid").val(json.C_ID);
		  },"json");
 	}
 
 
 </script>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
		<fieldset id="bindClient_channel">
				<p  style="width:250px">
					<label style="width:60px;">商户号</label>
					<input type="text" name="client_no" id="client_no" value="" class="required"  onblur="checkBindClient(this)"/>
				</p>
				<div class="divider"></div>
				
				<p style="width:90%">
					<label style="width:60px;">商户名</label>
					<input type="text" name="client_name" value="" id="client_name" class="required" readonly="readonly" size="40"/>
				</p>
				<p  style="width:250px">
					<label style="width:60px;">结算账户名</label>
					<input type="text" name="account_name" value="" id="account_name" class="required"  readonly="readonly"/>
				</p>
				<p  style="width:250px">
					<label style="width:60px;">已绑通道数</label>
					<input type="text" name="bind_num" value="" id="bind_num" class="required" readonly="readonly" size="10"/>
				</p>
			
		   </fieldset>
		   <div style="height:30px"><h2>通道信息</h2></div>
		  	<fieldset id="bindChannelClient">
				<p style="width:250px">
					<label style="width:60px;">通道名</label>					
							<select name="tbid" id="tbid" class="required" >
								<#list clientBindingList as key>
									 <option value="${(key.id)!}">${(key.name)!''}</option>
								</#list>
							</select>
				</p>
				<p style="width:250px">
					<label style="width:60px;">通道终端号</label>
					<input type="text" name="mch_id" value="" class="required" onblur="checkChannelClient(this)"/>
				</p>		
			   <div class="divider"></div>
				<input type="hidden" name="bid" id="bid" value="">
				 </fieldset>	
				   <p>
					<label style="width:60px;">状态</label>
					<input type="radio" name="status" value="0" checked/>启用
					<input type="radio" name="status" value="1" />禁用
				</p>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

