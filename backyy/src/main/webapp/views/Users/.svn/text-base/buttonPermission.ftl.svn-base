<style>
	p.bgBtn:hover{
		cursor:pointer;
	}
	.panelBarClass{
		position: fixed;
		z-index:1;
		width: 65%;
	}
</style>
<script>
	$(".bgBtn").click(function(){
		$(this).siblings().toggle();
		var aTitle = $(this).find(".tle").text();
		if(aTitle=="-收缩"){
			$(this).find(".tle").html("+展开");
		}else{
			$(this).find(".tle").html("-收缩");
		}
	});
	$("#allChecked",document).click(function(){
		$("input[type='checkbox']").attr("checked",true);
	});
	$("#inverseChecked",document).click(function(){
		$("input[type='checkbox']").each(function(){
			$(this).attr("checked",!$(this).attr("checked"));
		});
	});
	$("#saveData",document).click(function(){
		var retObj = getMenuCheck();
		if(retObj!=$("#cid").val()){
			alertMsg.confirm("左侧菜单发生变动,点击确认重新生成按钮信息",{
				okCall:function(){
					getCkVlByTree();
				}
			});
		}else{
			var buttonData = "";
			var flag = false;
			$("input[name='buttonChecked']:checked").each(function(){
				buttonData+=","+$(this).val();
			});
			if(buttonData!=""){
				buttonData = buttonData.substring(1);
				$("input[name='buttonData']").val(buttonData);
				formSubmit();
			}else{
				alertMsg.confirm("您未选中任何按钮,是否不设置按钮权限?",{
					okCall:function(){
						formSubmit();
					}
				});
			}
		}
	});
	//权限添加完成回调函数
	function saveIsSuccess(data){
		DWZ.ajaxDone(data);
		navTab.reloadFlag("persetup");
	}
	//表单提交
	function formSubmit(){
		$.ajax({
			type:'POST',
			url:"${(projectName)!}/?spm=${(urlEncrption('Users/saveButton'))!}",
			data:$("#dataForm").serializeArray(),			
			dataType:"json",
			cache: false,
			success: saveIsSuccess,
			error: DWZ.ajaxError
		});
	}
</script>
<div class="pageContent">
	<div class="panelBar panelBarClass" style = "height:30px;">
		<span style = "color:#999933;font-size:13px;font-weight:bold;margin-top:3px;margin-left:10px;float:left;">[系统]:请先选择左侧菜单进行匹配菜单所属按钮</span>
		<div style = "margin-top:3px;">
			<span id = "allChecked"><div class="buttonActive"><div class="buttonContent"><button>全选</button></div></div></span>
			<span id = "inverseChecked"><div class="buttonActive"><div class="buttonContent"><button>反选</button></div></div></span>
		</div>
		<span style = "float:right;margin-right:5%" id = "saveData"><div class="buttonActive"><div class="buttonContent"><button>点击此处进行保存</button></div></div></span>
	</div>
	<div style = "margin-top:35px;" >
		<form action = "${(projectName)!}/?spm=${(urlEncrption('Users/saveButton'))!}" method = "post" id = "dataForm">
			<input id = "cid" name = "carte_id" value = "${(carte_id)! }" type = "hidden"/>
			<input name = "buttonData" value = "" type = "hidden"/>
			<input name = "admin_id" value = "${(admin_id)! }" type = "hidden"/>
			<#if buttonData??>
				<#list buttonData?keys as key >
					<fieldset style="background-color:#EBF0F5;width:98%;margin-top:5px;">
						<p class = "bgBtn" style="width:100%;border:dashed 1px #999933;height:20px;">
							<label style="width:80%;font-weight:bold;margin-left:10px;color:#666600;">${(carteData[key]["CARTE_NAME"])! }</label>
							<a class="tle" style="float:right;cursor:pointer;color:#999933;margin-right:10px;">-收缩</a>
						</p>
						<fieldset style="background-color:#ffffff;float:left;width:98%">
							<div style="margin:5px;">
								<label style="color:red;">按钮权限:</label>
							</div>
							<div>
								<p style="width:98%;height:auto">
									<#if (buttonData[key]?size > 0) >
										<#list buttonData[key] as dataMap>
											<label style = "margin-left:5px;">
												<input name = "buttonChecked" type="checkbox" <#if (dataMap["checked"]) ??>checked</#if> value = "${(dataMap["ID"])! }">${(dataMap["BUTTON_NAME"])! }
											</label>
										</#list>
									<#else>
										<label style = "color:gray;">此菜单下暂无按钮信息</label>
									</#if>
								</p>
							</div>
							<div style="margin:5px">
								<div class="divider"></div>
							</div>
						</fieldset>
					</fieldset>
				</#list>
			</#if>
		</div>
	</form>
</div>
