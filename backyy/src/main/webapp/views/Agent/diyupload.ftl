<link rel="stylesheet" type="text/css" href="${base}/public/dwz/diyUpload/css/webuploader.css">
<link rel="stylesheet" type="text/css"	href="${base}/public/dwz/diyUpload/css/diyUpload.css">
<script	src="${base}/public/dwz/diyUpload/js/webuploader.html5only.min.js"	type="text/javascript"></script>
<script src="${base}/public/dwz/diyUpload/js/diyUpload.js"	type="text/javascript"></script>

<div class="pageContent" style="overflow:hidden;">
   <div class="pageFormContent" layoutH="10">
      <#list basepic as basepic>
	        <div style="margin-left:10px;font-size:14px;font-weight:bold;margin-top:5px;">
			              ${(basepic['INFO'])!}
			</div>
			<div style="width:97%;margin-left:1%;height:auto;border:1px solid #7cc5e5;margin-top:5px;border-radius: 12px;">
			    <div id="${(basepic['INFO_EN'])!}" style="margin:5px;">
			    </div>
			</div>
			<script type="text/javascript">
				$("#"+"${(basepic['INFO_EN'])!}").diyUpload({
							url : '${(projectName)!}/?spm=${(urlEncrption('Agent/uploadPic'))!}&client_no=${(client_no)}&class_en=${(basepic['INFO_EN'])!}&acount_type=1',
							success : function(data) {
					  			if(data.pic=="0000"){
					  			   alertMsg.correct("上传图片成功");
					  			   //刷新页面
					  			   navTab.reloadFlag("Agent_findpictrue");
					  			}else{
					  			   alertMsg.error("上传图片失败");
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
								fileNumLimit : 3,
								fileSizeLimit : 3*1024* 1024,
								fileSingleSizeLimit : 1024 * 1024,
						});
			  </script>
		</#list> 
   </div>
</div>