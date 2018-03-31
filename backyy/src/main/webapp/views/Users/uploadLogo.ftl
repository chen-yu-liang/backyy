<link rel="stylesheet" type="text/css" href="${(projectName)!}/public/dwz/diyUpload/css/webuploader.css">
<link rel="stylesheet" type="text/css"	href="${(projectName)!}/public/dwz/diyUpload/css/diyUpload.css">
<script	src="${(projectName)!}/public/dwz/diyUpload/js/webuploader.html5only.min.js" type="text/javascript"></script>
<script src="${(projectName)!}/public/dwz/diyUpload/js/diyUpload.js" type="text/javascript"></script>
<div class="pageContent">
   <div class="pageFormContent" layoutH="36" style="height: 393px; overflow: auto;">
			 <fieldset>
			    <legend>Logo地址</legend>
			    <input type="text" size = "40" id = "logoHref"/>
			    <span class = "info">例:https://www.baidu.com/ &nbsp;&nbsp;&nbsp;注:logo图片格式为.png<span>
			 </fieldset>
			<div style="width:97%;margin-left:1%;height:auto;border:1px solid #7cc5e5;margin-top:5px;border-radius: 12px;">
			    <div id="diyUpload" style="margin:5px;">
			    </div>
			</div>
			<script type="text/javascript">
				var uri = "${(projectName)!}/Users/publicUploadPic?userName=${(userName)!}";
				var filesnums="";
				$("#diyUpload").diyUpload({
							url : uri,
							 //类型限制;  
				            accept:{  
				                extensions:"png",  
				            },
							success : function(data) {
							   if(data["sign"]=="success"){
							   		data.logoHref=$("#logoHref",$(document)).val();
							   		$.post("${(projectName)!}/FilesInfo/saveLogo",{data:data},function(data){
							   			if(data["resSign"]=="0"){
							   				alertMsg.correct("上传图片成功");
				  			   				$.pdialog.closeCurrent();
							   			}else{
							   				alertMsg.correct("保存图片信息异常!请联系管理员!");
							   			}
							   		});
							   }else if(data["sign"]=="error"){
							   		alertMsg.correct("上传图片失败");
							   }
							},
							error : function(err) {
							   alertMsg.error("系统异常");
							},
							buttonText : '选择文件',
							chunked : false,
							// 分片大小
							chunkSize : 1024 * 1024,
							//最大上传的文件数量, 总文件大小,单个文件大小(单位字节);
							fileNumLimit : 1,
							fileSizeLimit : 3072 * 1024,
							fileSingleSizeLimit : 1024 * 1024
						});
			  </script>
	</div>
</div>