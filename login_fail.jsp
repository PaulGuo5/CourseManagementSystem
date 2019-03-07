<!DOCTYPE html>
<!-- saved from url=(0086)https://passport.zhihuishu.com/login?service=http://online.zhihuishu.com/onlineSchool/ -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<meta name="viewport"
	content="width=device-width, initial-scale=0.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
<meta name="description">
<title>师生课程管理平台</title>
<link href="https://assets.zhihuishu.com/icon/favicon.ico"
	rel="shortcut icon">
<link href="./css/base.css" rel="stylesheet" type="text/css">
<link href="./css/wall.css" rel="stylesheet" type="text/css">
<link href="./css/style.css?1" rel="stylesheet" media="screen"
	type="text/css" />
<script src="./css/jquery.min.js.下载" type="text/javascript"></script>
<script src="./css/three.min.js.下载" type="text/javascript"></script>
<script src="./css/layer.js.下载" type="text/javascript"></script>
<link rel="stylesheet" href="./css/layer.css" id="layuicss-skinlayercss">
<script type="text/javascript" src="./css/sign_up.js.下载"></script>
<script type="text/javascript" src="./css/find_pwd.js.下载"></script>

	<script language="javascript" type="text/javascript">
        function check()
        {
            var flag1=1,flag2=1,flag = 0;
            var _radio = document.getElementById("myForm").getElementsByTagName("input");
            for (var i = 0; i < _radio.length-1; i++)
                if (_radio[i].checked == true) {
                    flag++;
                }
            if(document.getElementsByName("username")[0].value==""){
                flag1=0;
            }
            if(document.getElementsByName("password")[0].value==""){
                flag2=0;
            }
            if(flag1==1&&flag2==1&&flag==1){
                return true;
            }
            if(flag1==0){alert("学号不能为空!");}
            if(flag2==0){alert("密码不能为空!");}
            if(flag!=1){alert("请选择身份!");}
            return false;
        }
	</script>
</head>
<body class="wall-body">



	<form name="form1" action="login.action" method="post"id="myForm"
		  onsubmit="return check();">

		<div class="wall-warp">
			<div class="wall-main">
				<div class="wall-icon wall-logo"></div>
				<div class="switch-nav"></div>
				<!--登录-->
				<div class="switch-wrap switch-wrap-signin active">
					<ul class="wall-form-ipt-list">
						<li><input type="text" placeholder="请输入学号" value=""
							name="username"
							onfocus="hideErrorInfo(&#39;form-ipt-error-l-username&#39;);"
							id="lUsername">
						</li>
						<li><input type="password" placeholder="请输入密码" value=""
							name="password"
							onfocus="hideErrorInfo(&#39;form-ipt-error-l-password&#39;);"
							id="lPassword">
						</li>
					</ul>



					<div class="container" align="center">
						<input type="radio" id="student" name="radio" value="student" />
						<label for="student" class="check-box">
							<div style="margin-top: 10px; text-align: center;">
								学生
							</div>
						</label>
						<input type="radio" id="teacher" name="radio" value="teacher" />
						<label for="teacher" class="check-box"style=" left: 5px;">
							<div style="margin-top: 10px; text-align: center;">
								教师
							</div>
						</label>
						<input type="radio" id="admin" name="radio" value="admin" />
						<label for="admin" class="check-box"style=" left: 10px;">
							<div style="margin-top: 10px; text-align: center;">
								管理员
							</div>
						</label>
						<p>密码错误，请重新登录</p>
					</div>

					<input type="submit" class="wall-sub-btn" value="登录">
				</div>
			</div>


			<script src="./css/wallbgcanvas.js.下载" type="text/javascript"></script>
			<div id="wall-bg">
				<span></span>
				<canvas width="1362" height="909"
					style="width: 1362px; height: 909px;"></canvas>
			</div>
		</div>
	</form>
</body>
</html>