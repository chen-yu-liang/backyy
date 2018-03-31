 <script language="javascript">
 	function getClientRate(th){
	 	  var product_no=$(th).val().trim();
	 	  var client_no = $("#client_no").val();
	 	  var url="${(projectName)!}/?spm=${(urlEncrption("${action}/getAgentRateInfo"))!}";	 
		  $.ajax({
		    			type:"post",
		    			url:url,
		    			timeout:10000,	//超时时间设置,单位毫秒(10秒)
		    			data:{"product_no":product_no,"client_no":client_no},
		    			success:function(data){
		    				if(data){
		    					//添加可选通道的样式
		    					$("#rate").empty();
		    					$("#rate").append("<option selected='' value=''>"+'-请选择-'+"</option>");
		    					//循环追加
		    					$.each(data,function(key,values){
		    						$("#rate").append("<option value='"+values.rate_no+"'>"+values.rate_no+"-"+values.rate_name+"</option>");
		    					});
			       		 	}
		    			},
		    			//设置超时处理
		    			complete : function(XMLHttpRequest,status){ 
		    				//请求完成后最终执行参数
					　　　　    if(status=='timeout'){
								//超时,status还有success,error等值的情况
					 　　　　　 	ajaxTimeoutTest.abort();
					 			alert("请求超时请刷新页面重试")
					　　　　	}
					　　  }
	    			});
 	}
 </script>
<#assign product_type=getCache("b_product_type")>
<#assign clear_type=getCache("b_clear_type")>
<#assign card_type=getCache("b_card_type")>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/ClientProduct/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this,ourAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">产品编号</label>
					<select id="product_no" name="product_no"   selectvl="${(clientProduct.product_no)!''}" onchange="getClientRate(this)"  class="required" style="width: 80px">
						<option value="">请选择</option> 
						<#list basepro as key>
							<option value="${(key.pro_no)!''}">${(key.pro_name)!''}</option>
						</#list>
	          		</select>
				</p>
				<p>
					<label style="width:60px;">商户编号</label>
					<#if clientProduct??>
					<input type="text" readonly id="client_no" name="client_no" value="${(clientProduct.client_no)!}"/>
					<#else>
					<input type="text" readonly id="client_no" name="client_no" value="${(clientNo)!''}"/>
					</#if>
				</p>
				<p>
					<label style="width:60px;">结算费率</label>
					<select id="rate" name="rate"   selectvl="${(clientProduct.rate)!''}"  class="required" style="width: 80px">
						<option value="">请选择</option>
						<#list rateList as list>
							<option value="${(list.rate_no)!}">${(list.rate_no)!}-${(list.rate_name)!}</option>
						</#list>
	          		</select>
				</p>
				<p>
					<label style="width:60px;">状态 </label>
	          		<input type="radio" name="status" class="required" value=1 <#if clientProduct?? && clientProduct.status==1>checked<#else>checked</#if>/>未开通
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="status" class="required" value=0 <#if clientProduct?? && clientProduct.status==0>checked</#if>/>开通
				</p>
				<p>
					<label style="width:60px;">结算方式</label>
	          		<input type="radio" name="clear_type" class="required" value=0 <#if clientProduct?? && clientProduct.clear_type==0>checked<#else>checked</#if>/>S0
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="clear_type" class="required" value=1 <#if clientProduct?? && clientProduct.clear_type==1>checked</#if>/>T1
				</p>
				<input type="hidden" name="product_no" value="${(clientProduct.product_no)!}">
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

