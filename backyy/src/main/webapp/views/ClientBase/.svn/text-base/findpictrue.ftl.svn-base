<link href="${base}/public/imgZoom/jquery.artZoom.css" rel="stylesheet" type="text/css" media="screen"/>
<script src="${base}/public/imgZoom/jquery.artZoom.min.js" type="text/javascript" media="screen"></script>
<script type="text/javascript">
	$('.artZoom').artZoom({
		path: '/imgZoom/images',	// 设置artZoom图片文件夹路径
		preload: true,		// 设置是否提前缓存视野内的大图片
		blur: true,			// 设置加载大图是否有模糊变清晰的效果
		
		// 语言设置
		left: '左旋转',		// 左旋转按钮文字
		right: '右旋转',		// 右旋转按钮文字
		source: '看原图'		// 查看原图按钮文字
	});
</script>
<style>
	.img_title {
		font-size: 14px;
		font-weight: bold;
		height: 25px;
		width: 300px;
		border: 1px solid #666666;
		background-position: center;
		vertical-align: middle;
		line-height: 25px;
	}
	.imgsss {
		max-width: 900px; 
		width:expression(this.width > 900 ? "900px" : this.width+"px"); overflow:hidden;
		max-height: 300px; 
		height:expression(this.height > 300 ? "300px" : this.height+"px"); overflow:hidden;
	} 
	.filesDiv{
		width: 800px;
		height: 25px;
		border: 1px solid #7cc5e5;
		margin-left: auto; 
		margin-right: auto;
		text-align: center;
		margin-top:4px;
		font-size: 14px;
		line-height: 25px;
		font-weight: bold;
		color: #7cc5e5;
	}
	.picDiv{
		width: 400px;
		height: 25px;
		border: 1px solid #7cc5e5;
		margin-left: auto; 
		margin-right: auto;
		text-align: center;
		font-size: 14px;
		line-height: 25px;
		font-weight: bold;
		color: #7cc5e5;
	}
</style>
<script type="text/javascript">
   //显示或者隐藏图片
   function showPic(obj){
        $("."+obj).slideToggle(300);
   }
</script>
<div class="pageContent">
   <div class="pageFormContent" layoutH="55" style="height:393px; overflow: auto;">
      <#assign flage=0>
      <#assign cardflage=0>
      <#assign charterflage=0>
      <#assign otherflage=0>
      <#list fileList as files >
           <#if files['files_type']=="IdCard">
	            <#if flage==0>
		               <div class="filesDiv" onclick="showPic('aa');">
						${(client_name)!}--<span style="color:red;">${(files['PIC_NAME'])!}</span>
				       </div>
				       <div class="divider"></div>
	            </#if>
		        <#assign flage=1>
		        <table style="width:100%;text-align: center; margin-top:15px;" class="aa">
						<tr>
							<td style="text-align: center;">
						    	<img alt="${(files['FILES_NAME'])!}--点击查看大图（旋转照片）" src="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}" 
							    class="artZoom imgsss" data-artZoom-show="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}"  data-artZoom-source="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}${(files['files_address'])!}" />
						    </td>
						</tr>
						<#if status??>
						<tr>
							<td style="height: 40px;">
							    <div class="picDiv">${(files['FILES_NAME'])!}&nbsp;&nbsp;&nbsp; 
							         <a href="${(projectName)!}/?spm=${(urlEncrption('ClientBase/deletePic'))!}&id=${(files['FILES_ID'])!}&pic_name=${(files['FILES_NAME'])!}" style="color:blue;" target="ajaxTodo" title="确认删除吗？">(删除)</a>
						        </div>
						    </td>
						</tr>
						</#if>
			   </table>
           </#if>
           <!-- 结算账户 -->
	       <#if files['files_type']=="acount_info">
	            <#if cardflage==0>
		               <div class="filesDiv" onclick="showPic('bb');">
						 ${(client_name)!}--<span style="color:red;">${(files['PIC_NAME'])!}</span>
				       </div>
				       <div class="divider"></div>
	            </#if>
		        <#assign cardflage=1>
		        <table style="width:100%;text-align: center; margin-top:15px;" class="bb">
						<tr>
							<td style="text-align: center;">
							    <img alt="${(files['FILES_NAME'])!}--点击查看大图（旋转照片）" src="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}" 
							    class="artZoom imgsss" data-artZoom-show="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}"  data-artZoom-source="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}" />
						    </td>
						</tr>
						<#if status??>
						<tr>
							<td style="height: 40px;">
							    <div class="picDiv">${(files['FILES_NAME'])!}&nbsp;&nbsp;&nbsp; 
							         <a href="${(projectName)!}/?spm=${(urlEncrption('ClientBase/deletePic'))!}&id=${(files['FILES_ID'])!}&pic_name=${(files['FILES_NAME'])!}" style="color:blue;" target="ajaxTodo" title="确认删除吗？">(删除)</a>
						        </div>
						    </td>
						</tr>
						</#if>
			   </table>
           </#if>
           <!-- 营业执照和机构资料 -->
            <#if files['files_type']=="ClientCharter">
	            <#if charterflage==0>
		               <div class="filesDiv" onclick="showPic('cc');">
						 ${(client_name)!}--<span style="color:red;">${(files['PIC_NAME'])!}</span>
				       </div>
				       <div class="divider"></div>
	            </#if>
		        <#assign charterflage=1>
		        <table style="width:100%;text-align: center; margin-top:15px;" class="cc">
						<tr>
							<td style="text-align: center;">
							    <img alt="${(files['FILES_NAME'])!}--点击查看大图（旋转照片）" src="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}" 
							    class="artZoom imgsss" data-artZoom-show="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}"  data-artZoom-source="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}" />
						    </td>
						</tr>
						<#if status??>
						<tr>
							<td style="height: 40px;">
							    <div class="picDiv">${(files['FILES_NAME'])!}&nbsp;&nbsp;&nbsp; 
							         <a href="${(projectName)!}/?spm=${(urlEncrption('ClientBase/deletePic'))!}&id=${(files['FILES_ID'])!}&pic_name=${(files['FILES_NAME'])!}" style="color:blue;" target="ajaxTodo" title="确认删除吗？">(删除)</a>
						        </div>
						    </td>
						</tr>
						</#if>
			   </table>
           </#if>
             <!-- 其他资料-->
            <#if files['files_type']=="other">
	            <#if otherflage==0>
		               <div class="filesDiv" onclick="showPic('dd');">
						 ${(client_name)!}--<span style="color:red;">${(files['PIC_NAME'])!}</span>
				       </div>
				       <div class="divider"></div>
	            </#if>
		        <#assign otherflage=1>
		        <table style="width:100%;text-align: center;  margin-top:15px;" class="dd">
						<tr>
							<td style="text-align: center;">
						    	<img alt="${(files['FILES_NAME'])!}--点击查看大图（旋转照片）" src="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}" 
							    class="artZoom imgsss" data-artZoom-show="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}"  data-artZoom-source="<#if (files['files_address'])!?contains("/agent")>${(agentURL)!}</#if>${(files['files_address'])!}" />
						    </td>
						</tr>
						<#if status??>
						<tr>
							<td style="height: 40px;">
							    <div class="picDiv">${(files['FILES_NAME'])!}&nbsp;&nbsp;&nbsp; 
							         <a class="delete permission" href="${(projectName)!}/?spm=$=${urlEncrption("/ClientBase/deletePic")}&id=${(files['FILES_ID'])!}&pic_name=${(files['FILES_NAME'])!}" style="color:blue;" target="ajaxTodo" rel="ClientBase_deletePic" title="确认删除吗？">(删除)</a>
						        </div>
						    </td>
						</tr>
						</#if>
			   </table><br/>
           </#if>
	   </#list>
	   <!-- 判断list是否小于等于0 -->
	   <#if (fileList?size) lte 0>
	        <div class="filesDiv" >暂无图片信息</div>
	   </#if>
   </div>
   <div class="formBar">
			<ul>
   			<#if (status??) && status=='0'>
			     <li>
					<a class="buttonActive" href="${(projectName)!}/?spm=${(urlEncrption('ClientBase/diyupload'))!}&client_no=${client_no}" rel="ClientBase_diyupload" target="dialog" width="890" height="560">
					   <span>上传商户图片资料</span>
					</a>
				 </li>
   			</#if>
				 <li>
				    <div class="button">
						<div class="buttonContent">
							<button type="button" class="close">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;取&nbsp;消&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</button>
						</div>
					</div>
				 </li>
			</ul>
   </div>
</div>