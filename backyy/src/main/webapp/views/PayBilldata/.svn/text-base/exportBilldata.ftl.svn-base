<script type="text/javascript">
/**
 * excel导入判断
 */
$(function(){
	$("#file").change(function(){
		$("#noChoice").css("display","none");
		$("#tishi").css({"color":"red","font-size":"14px"}).text("");
		var filePath=$(this).val();
		var index = filePath.indexOf('.');
		var suffix = filePath.substring(filePath.lastIndexOf('.'));
		if(suffix != '.txt'){
			$("#tishi").css({"color":"red","font-size":"12px"}).text("请重新选择.txt文件！");
			$("#noChoice").css("display","none");
		}else{
			$("#noChoice").css("display","inline");
		}
	});
});
function selectFile(){  
    //触发 文件选择的click事件  
    $("#file").trigger("click");  
//其他code如 alert($("#file").attr("value"))  
}  
/* 获取 文件的路径 ，用于测试*/  
function getFilePath(){  
    $("#excelid").val($("#file").attr("value"));
}


</script>
 <div class="pageContent" style="overflow:hidden;">
 <#assign bid=getCache("bid")>
  <form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/savePaydata'))!}" enctype="multipart/form-data" class="pageForm required-validate" onsubmit="return iframeCallback(this,dialogAjaxDone);" novalidate="novalidate" target="callbackframe">
		<div class="pageFormContent" layouth="40" style="height: 89px; overflow: auto;background-color:#ecf2f4;">
			<P>
			<label style="width:100px;">&nbsp;&nbsp;通道编号：</label>
			<select name="tbid">
				<#list getTbids as key>
					 <option value="${(key.company_id)!''}">${(key.company_id)!''}-${(key.ins_id_cd)!''}-${(key.code_name)!''}</option>
				</#list>
			</select>
		    </P>
			<p style="margin-top:20px;margin-left:4px;">
			<!-- 给这个input 设置样式隐藏，切忌不可用display控制隐藏,可能不能跨浏览器 -->  
			<label style="color:green;width:100px">选择Txt文件：</label>
			<input type="file" id="file" name="file" onchange="getFilePath()"style="filter:alpha(opacity=0);opacity:0;width: 0;height: 0;"/> 
			<input type='text' name='excelid' id='excelid' class='txt' />  
			<input style="cursor: pointer" id="btn" type='button' name="file" class='btn' value='浏览...' onclick="selectFile();" />
			<span id="tishi"><span>
			</p>
		</div>
		<div class="formBar" style="magin-top:5px;">
			<ul>
				<span id="noChoice" style="display:inline;"><li><div class="buttonActive"><div class="buttonContent" ><button>提交</button></div></div></li></span>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
		

	</form>
</div>