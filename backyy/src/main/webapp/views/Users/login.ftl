<!doctype html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>欢迎登录后台管理系统</title>

<link href="${base}/public/login/css/slide-unlock.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${base}/public/login/css/styles.css">
<link rel="stylesheet" type="text/css" href="${base}/public/login/poshytip/tip-yellowsimple/tip-yellowsimple.css">
<style>
    html, body, h1 {
        margin: 0;
        padding: 0;
    }
  
</style>
</head>
<body>

<div class="wrapper">
	<div class="container">
		<h1 id = "loginWelcome">Welcome</h1>
		<form class="form">
			<input type="text" name="user_code" id="user_code" placeholder="用户名" >
			<input type="password" name="user_pass"  id="user_pass" placeholder="密码" >
			<button type="button" id="login-button">登录</button>
		</form>
		<div id="popup-captcha"></div>
	</div>
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
<script type="text/javascript" src="${base}/public/login/js/jquery-2.1.1.min.js"></script>
<script src="${base}/public/login/js/jquery.slideunlock.js"></script> 
<script src="${base}/public/login/poshytip/jquery.poshytip.js"></script> 
<script src="${base}/public/login/js/new_login.js"></script> 
<!-- 引入封装了failback的接口--initGeetest -->
<script src="http://static.geetest.com/static/tools/gt.js"></script>
</body>
</html>