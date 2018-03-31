 <script language="javascript">
 	function checkBusinessid(th){
	 	  var deal_type=$(th).val().trim();
	 	  if(deal_type=="")return false
	 	  var mch_id= $("#bindBusinessid #mch_id").val();
	 	  var url="${(projectName)!}/?spm=${(urlEncrption("${action}/getBingBusinessid"))!}";	 
		  $.post(url,{mch_id:mch_id,deal_type:deal_type},function(json){
		  if(json==null){
		  	alertMsg.error("交易类型 ["+deal_type+"]不存在")	
		  	return false;
		  }
		  $("#bindBusinessid #business_id").val(json.ID);
		  },"json");
 	}
 
 </script>
 <#assign product_type=getCache("b_product_type")>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<input type="hidden" name="object_no" id="object_no" class="required" value="000000" />
			<fieldset id="bindBusinessid">
				<p>
					<label style="width:60px;">渠道商户号</label>
					<select name="mch_id" id="mch_id" class="required" >
						<option>--请选择--</option>
						<#list channelList as key>
							<option value="${(key.mch_id)!}">${(key.mch_id)!''}</option>
						</#list>
					</select>
				</p>
				<p>
					<label style="width:60px;">交易类型 </label>
					<select id="deal_type" name="deal_type" class="required" onchange="checkBusinessid(this)" >
						<option>--请选择--</option>
						<#list basepro as key>
							<option value="${(key.pro_no)!''}">${(key.pro_name)!''}</option>
						</#list>
	          		</select>
				</p>
				<p>
					<label style="width:60px;">业务代码id</label>
					<input type="text" name="business_id" id="business_id" value="" class="required" />
				</p>
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

