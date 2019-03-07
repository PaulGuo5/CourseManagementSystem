<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
			<a href="changepw.action?changeid=${sessionScope.value}" style="margin: 5px;">
				<span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>
				修改密码</a>
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
		<div class="menusel" style="width:120px;margin-top: 0;">
			<h2><a href="index.jsp">首页</a></h2>
		</div>
			<div id="menu1" class="menusel" style="width:130px;">
				<h2><a href="show.action">学生名单</a></h2>
				<div class="position">
					<ul class="typeul">
						<li ><a href="show.action">查看学生名单</a></li>
						<li class="lli"><a href="add.jsp">导入学生信息</a></li>
					</ul>
				</div>
			</div>
		<div id="menu2" class="menusel" style="width:130px;">
			<h2><a href="showfile.action">查看课件</a></h2>
			<div class="position">
				<ul class="typeul">
					<li ><a href="showfile.action">查看课件列表</a></li>
					<li class="lli"><a href="upload.jsp">上传课件</a></li>
				</ul>
			</div>
		</div>
		<div id="menu3" class="menusel" style="width:130px;">
			<h2><a href="teach.action">教学大纲</a></h2>
			<div class="position">
				<ul class="typeul">
					<li ><a href="teach.action">查看教学大纲</a></li>
					<li class="lli"><a href="addteach.jsp">上传教学大纲</a></li>
				</ul>
			</div>
		</div>
		<div id="menu4" class="menusel" style="width:130px;">
			<h2><a href="practice.action">习题问答</a></h2>
			<div class="position">
				<ul class="typeul">
					<li ><a href="practice.action">查看习题列表</a></li>
					<li class="lli"><a href="addpractice.jsp">导入习题练习</a></li>
				</ul>
			</div>
		</div>
		<div id="menu5" class="menusel" style="width:130px;">
			<h2><a href="showexp.action">教学实验</a></h2>
			<div class="position">
				<ul class="typeul">
					<li ><a href="showexp.action">查看实验列表</a></li>
					<li class="lli"><a href="addexp.jsp">新增教学实验</a></li>
				</ul>
			</div>
		</div>
		<div id="menu6" class="menusel">
			<h2><a href="showmessage.action">交流天地</a></h2>
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
						<li><a href="showmessage.action">师生交流平台</a></li>
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
				<br />
				<div  style="float:right;height:450px;">

					<div style="line-height: 1.5; letter-spacing: 4px;font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;在目前的高校学习生活中，由于教育模式的限制，师生之间的沟通和交流存在一定的局限，所以就很有必要在课堂时间之外给师生们提供一个较为自由的交互平台。为了方便师生的沟通和了解，该课程网站就可以作为是课堂教学的一种延伸，在传统的课堂授课外，师生可以通过该课程网站进行本课程的一些探讨和交流。该系统使师生的交流更加方便，促进了双方的了解，使教师更熟悉学生的学习情况，可以发布实验、大纲、上传课件、管理学生名单、发布习题。与此同时，学生能更加了解自己的学习情况和课程的进度，更好地对该课程进行进一步的学习和探究，学生还能够进行在线习题训练和问题交流、课件下载、提交实验。
						</div>
					<div style="line-height: 1.5; letter-spacing: 4px;font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;不仅如此，该系统还能提高教师的教学质量，不但能够发布课堂安排的实验，还能在课外发布习题，使学生能够加深对课程的学习。学生能够通过此了解自己的学习情况，不仅能够完成实验的提交，完成课外习题，还更加容易进行学习的总结和反馈，使教师及时发现学生存在的问题，及时调整教学计划，使学生能够更好地学习。再者，该课程网站主要面对的是计算机、软件方向的教师和学生，相对比较有特殊性，许多作业，特别是编程作业难以以传统的纸质版方式来提交，并且用邮箱进行交流和提交使得教师的收缴作业难度加大，但该系统就能提供一个很好的平台方便教师在线收发作业。因此，我们需要一个能够面向大规模的课程管理系统。

					</div>
				</div>
			</div>
			<%--<div class="news">--%>
				<%--<div class="news_title"><span><img src="images/title_1.gif" /></span><a href="showexp.action"><img src="images/more.gif" /></a></div>--%>
				<%--<div><img src="images/fzulib.jpg" width=650px height=350px/></div>--%>
			<%--</div>--%>
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
