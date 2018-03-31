<script>
		 var sign=1;
         var bool=false;
		 var test_user = "";
			$(function(){
				$("#test_user",$(document)).blur(function(){
				test_user = $("#test_user",$(document)).val();
				if (test_user == "") {
				    sign=1;
					$("#NumError").html('请输入登录名！');
					return false;
				}else{
					   sign=2;
					    jQuery.ajax({
					    		type : 'POST',
					    		url : '${(projectName)!}/TestClientLogin/check/',
					    		dataType : "json",
					    		data : { 
					    			"test_user" : test_user
					    	 	},
					    		error : function(message) {
					    	 		alertMsg.error("查询出错")
					    		},
					    		success : function(data) {
					    		    if(data.message == "1"){
					    		        bool=true;
					    		    }else{
					    		        $("#NumError").html(data.message);
					    		         bool=false;
					    		    }
					    		}
    	               		}); 

					} 
				});
			});

		function clearData(){	
		   $("#NumError").html('');
		}
		
		function checkFroms(){
		if(sign==1){
         	$("#NumError").html('请输入登录名！');
        	return false;
       	}else if(sign==2){
			if(bool){
		     	if(confirm('确定要添加该用户吗?')){
		        	return validateCallback(document.addUser_form, dialogAjaxDone);
		        }else{
		        	return false;
		        }
			}else{
		    	return false;
			}
		}
	}	
	
</script>	
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" name="addUser_form"  onsubmit="return checkFroms();">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
				<p>
					<label style="width:120px;">测试员登录账号</label>
					<input type="text" name="test_user" id="test_user" class="required" value="${(testClientLogin.test_user)!}" onfocus="clearData();"/>
				</p>
				<p style="line-height:20px;width:100%;text-align: center;">
					<span id="NumError" style="color:red; line-height:25px; margin-left:5px;width:320px;"></span>
				</p>
				<p>
					<label style="width:120px;">登录密码</label>
					<input type="text" name="test_pass" maxlength="6" minlength="6" class="required" value="${(testClientLogin.test_pass)!}"/>
				</p>
				<p>
					<label style="width:120px;">测试员昵称</label>
					<input type="text" name="test_username"  class="required" value="${(testClientLogin.test_username)!}"/>
				</p>
				<input type="hidden" name="test_client" value="${(test_client)!}">
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

