 <script type="text/javascript">  
       var markerAr = [  
               {  point: "113.264531,23.157003",title: "名称：广州火车站", address: "广东省广州市广州火车站", tel: "12306" },  
               { title: "名称：广州塔（赤岗塔）", point: "113.330934,23.113401", address: "广东省广州市广州塔（赤岗塔） ", tel: "18500000000" },  
               { title: "名称：广州动物园", point: "113.312213,23.147267", address: "广东省广州市广州动物园", tel: "18500000000" },  
               { title: "名称：天河公园", point: "113.372867,23.134274", address: "广东省广州市天河公园", tel: "18500000000" }  
  
         ];
        var markerArr = [
        ${allAddress}
        ];
  
  
                
                 
	function initialize() {
  	var map = new BMap.Map("map");          // 创建地图实例  
	var point = new BMap.Point(116.201585, 39.912699);  // 创建点坐标  
	map.centerAndZoom(point, 14);// 初始化地图，设置中心点坐标和地图级别  
	map.enableScrollWheelZoom(true); //启用滚轮放大缩小  
	
	//向地图中添加缩放控件  
    var ctrlNav = new window.BMap.NavigationControl({  
     anchor: BMAP_ANCHOR_TOP_LEFT,  
     type: BMAP_NAVIGATION_CONTROL_LARGE  
     }); 
    map.addControl(ctrlNav);
    
     //向地图中添加缩略图控件  
    var ctrlOve = new window.BMap.OverviewMapControl({  
     anchor: BMAP_ANCHOR_BOTTOM_RIGHT,  
     isOpen: 1  
     });  
    map.addControl(ctrlOve);  
  
     //向地图中添加比例尺控件  
    var ctrlSca = new window.BMap.ScaleControl({  
     anchor: BMAP_ANCHOR_BOTTOM_LEFT  
   	});  
     map.addControl(ctrlSca);
   
     //绘制点    
    for (var i = 0; i < markerArr.length; i++) {  
       var p0 = markerArr[i].point.split(",")[0];  
       var p1 = markerArr[i].point.split(",")[1];  
       var maker = addMarker(new window.BMap.Point(p0, p1), i);
       addInfoWindow(maker, markerArr[i], i);   
      
     }  
  
      // 添加标注  
    function addMarker(point, index) {  
     	var myIcon = new BMap.Icon("http://api.map.baidu.com/img/markers.png",  
     	new BMap.Size(23, 25), {  
          offset: new BMap.Size(10, 25),  
            imageOffset: new BMap.Size(0, 0 - index * 25)  
         });  
       var marker = new BMap.Marker(point, { icon: myIcon });  
       map.addOverlay(marker);  
        return marker;  
   }
  
     // 添加信息窗口  
   function addInfoWindow(marker, poi) {  
       //pop弹窗标题  
       var title = '<div style="font-weight:bold;color:#CE5521;font-size:14px">' + poi.title + '</div>';  
       //pop弹窗信息  
       var html = [];  
       html.push('<table cellspacing="0" style="table-layout:fixed;width:100%;font:12px arial,simsun,sans-serif"><tbody>');  
       html.push('<tr>');  
       html.push('<td style="vertical-align:top;line-height:16px;width:38px;white-space:nowrap;word-break:keep-all">地址:</td>');  
       html.push('<td style="vertical-align:top;line-height:16px">' + poi.address + ' </td>');  
       html.push('</tr>');
       html.push('<tr>');   
       html.push('<td style="vertical-align:top;line-height:16px;width:38px;white-space:nowrap;word-break:keep-all">商户号:</td>');  
       html.push('<td style="vertical-align:top;line-height:16px">' + poi.tel + ' </td>');         
       html.push('</tr>');  
       html.push('</tbody></table>');  
       var infoWindow = new BMap.InfoWindow(html.join(""), { title: title, width: 200 });  
       var openInfoWinFun = function () {  
          marker.openInfoWindow(infoWindow);  
       };  
       marker.addEventListener("click", openInfoWinFun);  
          return openInfoWinFun;  
       }  
}
	//调用百度js
	function loadScript() { 
	  var script = document.createElement("script");  
	  script.src = "http://api.map.baidu.com/api?v=2.0&ak=gTeYaop1C2p4IGiKA0P37p7yvvHOjbd4&s=1&callback=initialize";  
	  document.body.appendChild(script);  
	}  
	window.onload = loadScript();                 
</script>   
<div class="pageContent">
	<div id="map" style="width:1700px;height:730px" ></div>
</div>


