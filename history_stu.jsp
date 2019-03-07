<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page import="java.util.List,com.se.domain.history"%>
<%
	Object username = session.getAttribute("username");
	if(null == username){

		response.sendRedirect("login.jsp");
	}
%>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>面向大规模用户的师生课程管理系统</title>
	<link href="css/css.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	<link href="css/bootstrap-3.3.7-dist/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="zhong">
	<div class="top" style="height: 48px;">
		<div class="top_left" style="color: #337ab7;">
			<p>欢迎您，<span class="glyphicon glyphicon-user" aria-hidden="true"></span>${sessionScope.username}
				【${sessionScope.value}】</p>
		</div>
		<div class="top_right">
			<a href="changepw_stu.action?changeid=${sessionScope.value}" style="margin: 5px;">
				<span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>
				修改密码</a>
			<a href="history.action?id=${sessionScope.value}" style="margin: 5px;">
				<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
				历史记录 </a>
			<a href="logout.action" style="margin: 5px;">
				<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
				退出</a>
			<div class="top_right_1"></div>
			<div class="top_right_2">

			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="banner"><img src="images/img_2.gif" width=1000px height=160px/></div>
	<div class="menu">
		<div class="menusel" style="width:150px;">
			<h2><a href="index_stu.jsp">首页</a></h2>
		</div>
		<div id="menu1" class="menusel" style="width:150px;">
			<h2><a href="showfile_stu.action">下载课件</a></h2>
		</div>
		<div id="menu2" class="menusel" style="width:150px;">
			<h2><a href="teach_stu.action">查看大纲</a></h2>
		</div>
		<div id="menu3" class="menusel" style="width:150px;">
			<h2><a href="Practice_stu.jsp">习题练习</a></h2>
		</div>
		<div id="menu4" class="menusel" style="width:150px;">
			<h2><a href="showexp_stu.action">教学实验</a></h2>
		</div>
		<div id="menu5" class="menusel">
			<h2><a href="showmessage_stu.action">交流天地</a></h2>
			<div class="position">
				<ul class="clearfix typeul">
				</ul>
			</div>
		</div>
	</div>

	<div class="main">
		<div class="left">
			<%--<div class="box_1">--%>
			<%--<div class="left_title">会员中心</div>--%>
			<%--<table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
			<%--<div class="information_bg">--%>
			<%--<div class="information">--%>
			<%--<!--个人信息-->--%>

			<%--<p>--%>
			<%--<font size=3>欢迎您${sessionScope.username}!</font>--%>
			<%--</p>--%>
			<%--<p>--%>
			<%--<font size=3>工号${sessionScope.value}!</font>--%>
			<%--</p>--%>
			<%--<p>--%>
			<%--<font size=3> <a--%>
			<%--href="changepw_stu.action?changeid=${sessionScope.value}">修改密码</a></font>--%>
			<%--</p>--%>
			<%--<p>--%>
			<%--<font size=3><a--%>
			<%--href="history.action?id=${sessionScope.value}">历史记录 </a><font--%>
			<%--size=3>--%>
			<%--<a href="logout.action">--%>
			<%--<span class="glyphicon glyphicon-off" aria-hidden="true"></span>--%>
			<%--退出</a></font>--%>
			<%--</p>--%>
			<%--</div>--%>
			<%--</div>--%>
			<%--</table>--%>
			<%--</div>--%>
			<div class="box_1">
				<div class="left_title" style="font-size: 12px;">最美福大</div>
				<div class="left_nr" style="font-size: 13px;">
					<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000"style="weight:180px;">
						<!-- 轮播（Carousel）指标 -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<!-- 轮播（Carousel）项目 -->
						<div class="carousel-inner"style="weight:180px;height:250px;">
							<div class="item active">
								<img src="images/left_1.jpg" alt="First slide">

							</div>
							<div class="item">
								<img src="images/left_2.jpg"  alt="Second slide">

							</div>
							<div class="item">
								<img src="images/left_3.jpg" alt="Third slide">

							</div>
						</div>
						<!-- 轮播（Carousel）导航 -->
						<a class="carousel-control left" href="#myCarousel"
						   data-slide="prev">&lsaquo;</a>
						<a class="carousel-control right" href="#myCarousel"
						   data-slide="next">&rsaquo;</a>
					</div>
				</div>
			</div>
			<div class="box_1" style="margin:0px;">
				<div class="left_title" style="font-size: 12px;">留言板</div>
				<div class="left_nr" style="font-size: 13px;">
					<ul>
						<li><a href="showmessage_stu.action">师生交流平台</a></li>
						<img src="images/left.jpg" style="width:184px;"/>
						<%--<%
                            List<leftMessage> messages =(List<leftMessage>) request.getAttribute("teachList"); //important!
                            for (leftMessage mess : messages) {

                        %>
                    <li><%=mess.getId()%> </li>
                    <li><%=mess.getContent()%></li>
                    <%
                        }
                    %>--%>
					</ul>
				</div>
			</div>
		</div>
		<div class="right">
			<div class="right_title"  style="font-size: 40px;" ><b>面向大规模用户的师生课程管理系统</b>
				<br /></div>
			<div style=" height: 500px;width:650px;float:left;">
				</br>
				<h1 align="center" style="position: relative;font-size: 25px;color: #01548e; ">历史记录</h1>
				</br>
				<div style="overflow:scroll;height:400px;weight:400px;">
					<table class="table table-striped "style="min-height:600px;">
					<tr>
						<td ><strong>学号</strong></td>
						<td ><strong>操作内容</strong></td>
						<td ><strong>操作时间</strong></td>
					</tr>
					<%
						List<history> list = (List<history>) request.getAttribute("list"); //important!

						for (history hs : list) {

					%>
					<tr>
						<td>
							<%=hs.getOperator()%>
						</td>
						<td>
							<%=hs.getContent()%>
						</td>
						<td>
							<%=hs.getTime()%>
						</td>
					</tr>
					<%
						}
					%>
				</table>
				</div>
			</div>
		</div>

		<div class="clear"></div>
		<div class="huoban">
			<div class="huoban_title"><img src="images/title_2.gif" /></div>
			<div class="huoban_nr">
				<ul>
					<li><a href="http://www.fzu.edu.cn/" target="view_window">
						<img src="images/foot_fzu.jpg" style="height:68px;width:160px">
					</a>
					</li>
					<li><a href="http://jwch.fzu.edu.cn/" target="view_window">
						<img src="images/foot_jwc.jpg" style="height:68px;width:160px">
					</a>
					</li>
					<li><a href="http://zsb.fzu.edu.cn/" target="view_window">
						<img src="images/foot_fzuzsb.jpg" style="height:68px;width:160px">
					</a>
					</li>
					<li><a href="http://yjsy.fzu.edu.cn/" target="view_window">
						<img src="images/foot_fzum.jpg" style="height:68px;width:160px">
					</a>
					</li>
					<li><a href="http://yiban.fzu.edu.cn/" target="view_window">
						<img src="images/foot_fdyb.jpg" style="height:68px;width:160px">
					</a>
					</li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="bottom" style="color: #337ab7;"> <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>Email：441858734@qq.com   <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>联系电话：13115923660   <span class="glyphicon glyphicon-globe" aria-hidden="true"></span>QQ：441858734<br />
		<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>版权所有 2017-2018 </div>
</div>
</body>
<script type="text/javascript" src="css/meun.js">
</script>
</html>
