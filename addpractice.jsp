<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page import="java.util.List,com.se.domain.practice"%>
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
	<script language="javascript" type="text/javascript">
        function check()
        {
            var flag1=1,flag2=1;
            if(document.getElementsByName("subject")[0].value==""){
                flag1=0;
            }
            if(document.getElementsByName("A")[0].value==""||document.getElementsByName("B")[0].value==""
                ||document.getElementsByName("C")[0].value==""||document.getElementsByName("D")[0].value==""){
                flag2=0;
            }
            if(flag1==1&&flag2==1){
                alert('操作成功!');
                return true;
            }
            if(flag1==0){alert("题目内容不能为空!");}
            if(flag2==0){alert("选项内容不能为空!您还有未填写内容的选项！");}
            return false;
        }
        function check1(){
            if(confirm("确认提交该习题吗？")){
                return true
            }
            else
            {return false}
        }
	</script>
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
				<br /></div>
			<div style=" height: 500px;width:700px;float:left;">
				</br>
				<%--<button type="button" class="btn btn-primary" onclick="location='addpractice.jsp'" >导入习题</button>--%>

				<h1 align="center" style="position: relative;font-size: 25px;color: #01548e; ">导入习题</h1>
				</br>
				<%--<form action="addpractice.action" method="post"--%>
					  <%--onsubmit="return check();">--%>
					<%--题目：<input type="text" name="subject" /><span id="s1"></span><br />--%>
					<%--A选项：<input type="text" name="A" /><br /> B选项：<input type="text"--%>
																		<%--name="B" /><br /> C选项：<input type="text" name="C" /><br />--%>
					<%--D选项：<input type="text" name="D" /><br /> <span id="s2"></span><br />--%>
					<%--正确答案：<input type="radio" name="answer" value="A" checked>A--%>
					<%--<input type="radio" name="answer" value="B">B <input--%>
						<%--type="radio" name="answer" value="C">C <input--%>
						<%--type="radio" name="answer" value="D">D <input--%>
						<%--type="submit" value="提交" />--%>
				<%--</form>--%>
				<div style="height:500px;weight:400px;overflow:scroll;">
				<form class="form-horizontal" action="addpractice.action" method="post"
					  onsubmit="return check();">
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									题目
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								<div class="controls">
									<textarea textarea class="form-control"rows="4" cols="50" name="subject"></textarea>
									<p class="help-block">请输入题目</p>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									选项A
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
								<div class="controls">
									<input type="text" placeholder="Answer A" class="form-control"name="A" style="width: 500px;" >
									<p class="help-block">请输入选项A的内容</p>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									选项B
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">
								<div class="controls">
									<input type="text" placeholder="Answer B" class="form-control"name="B" style="width: 500px;">
									<p class="help-block">请输入选项B的内容</p>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFour">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
									选项C
								</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
							<div class="panel-body">
								<div class="controls">
									<input type="text" placeholder="Answer C" class="form-control"name="C" style="width: 500px;">
									<p class="help-block">请输入选项C的内容</p>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFive">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
									选项D
								</a>
							</h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
							<div class="panel-body">
								<div class="controls">
									<input type="text" placeholder="Answer D" class="form-control"name="D" style="width: 500px;">
									<p class="help-block">请输入选项D的内容</p>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingSix">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
									正确选项
								</a>
							</h4>
						</div>
						<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
							<div class="panel-body">
								<div class="controls">
									<!-- Multiple Radios -->
									<label class="radio">
										&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="A" name="answer" checked="checked">
										选项A
									</label>
									<label class="radio">
										&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="B" name="answer">
										选项B
									</label>
									<label class="radio">
										&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="C" name="answer">
										选项C
									</label>
									<label class="radio">
										&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="D" name="answer">
										选项D
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>
					<div class="controls">
						<button type="submit" onclick="return check1()" class="btn btn-primary" >提交</button>
					</div>
				</form>
				</div>

				<%--<form class="form-horizontal" action="addpractice.action" method="post"--%>
					  <%--onsubmit="return check();">--%>
					<%--<fieldset style="height:400px;">--%>
						<%--<div class="panel panel-default pre-scrollable" style="max-height: 400px;">--%>
						<%--<div id="legend" class="panel-heading">--%>
							<%--<legend class=""></legend>--%>
						<%--</div>--%>

						<%--<div class="control-group panel-body">--%>
							<%--<label class="control-label" for="input01">题目</label>--%>
							<%--<div class="controls">--%>
								<%--<input type="text" placeholder="CONTENT" class="input-xlarge"name="subject" style="width: 500px;" >--%>
								<%--<p class="help-block">请输入题目</p>--%>
							<%--</div>--%>
							<%--<span id="s1" style="color:red;"></span>--%>
							<%--&lt;%&ndash;<label class="control-label" >题目</label>&ndash;%&gt;--%>
							<%--&lt;%&ndash;<div class="controls">&ndash;%&gt;--%>
								<%--&lt;%&ndash;<div class="textarea">&ndash;%&gt;--%>
									<%--&lt;%&ndash;<textarea class="comment" name="subject" rows="4" cols="70" > </textarea><span id="s1"></span>&ndash;%&gt;--%>
								<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
							<%--&lt;%&ndash;</div>&ndash;%&gt;--%>

						<%--</div>--%>

						<%--<div class="control-group panel-body">--%>
						<%--<!-- Text input-->--%>
						<%--<label class="control-label" for="input01">选项A</label>--%>
						<%--<div class="controls">--%>
							<%--<input type="text" placeholder="Answer A" class="input-xlarge"name="A" style="width: 500px;" >--%>
							<%--<p class="help-block">请输入选项A的内容</p>--%>
						<%--</div>--%>
					    <%--</div>--%>

						<%--<div class="control-group panel-body">--%>
							<%--<!-- Text input-->--%>
							<%--<label class="control-label" for="input01">选项B</label>--%>
							<%--<div class="controls">--%>
								<%--<input type="text" placeholder="Answer B" class="input-xlarge"name="B" style="width: 500px;">--%>
								<%--<p class="help-block">请输入选项B的内容</p>--%>
							<%--</div>--%>
						<%--</div>--%>

						<%--<div class="control-group panel-body">--%>
						<%--<!-- Text input-->--%>
						<%--<label class="control-label" for="input01">选项C</label>--%>
						<%--<div class="controls">--%>
							<%--<input type="text" placeholder="Answer C" class="input-xlarge"name="C" style="width: 500px;">--%>
							<%--<p class="help-block">请输入选项C的内容</p>--%>
						<%--</div>--%>
					    <%--</div>--%>

						<%--<div class="control-group panel-body">--%>
							<%--<!-- Text input-->--%>
							<%--<label class="control-label" for="input01">选项D</label>--%>
							<%--<div class="controls">--%>
								<%--<input type="text" placeholder="Answer D" class="input-xlarge"name="D" style="width: 500px;">--%>
								<%--<p class="help-block">请输入选项D的内容</p>--%>
							<%--</div>--%>
							<%--<span id="s2" style="color:red;"></span><br />--%>
						<%--</div>--%>

						<%--<div class="control-group panel-body">--%>
							<%--<label class="control-label">正确答案</label>--%>
							<%--<div class="controls">--%>
								<%--<!-- Multiple Radios -->--%>
								<%--<label class="radio">--%>
                                    <%--&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="A" name="answer" checked="checked">--%>
									<%--选项A--%>
								<%--</label>--%>
								<%--<label class="radio">--%>
                                    <%--&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="B" name="answer">--%>
									<%--选项B--%>
								<%--</label>--%>
								<%--<label class="radio">--%>
                                    <%--&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="C" name="answer">--%>
									<%--选项C--%>
								<%--</label>--%>
								<%--<label class="radio">--%>
                                    <%--&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="D" name="answer">--%>
                                    <%--选项D--%>
								<%--</label>--%>
							<%--</div>--%>
						<%--</div>--%>


						<%--<div class="control-group panel-body">--%>
							<%--<label class="control-label">确认正确答案</label>--%>

							<%--<!-- Button -->--%>
							<%--<div class="controls">--%>
								<%--<button type="submit" onclick="return check1()" class="btn btn-primary" >提交</button>--%>
							<%--</div>--%>
						<%--</div>--%>
						<%--</div>--%>
					<%--</fieldset>--%>
				<%--</form>--%>

			</div>
		</div>
	</div>
	<%--<div class="course">--%>
	<%--<%--%>
	<%--String sss;--%>
	<%--String[] str= (String[]) request.getAttribute("list"); //important!--%>
	<%--for(int i=0;i<str.length;i++)--%>
	<%--{--%>
	<%--if(str[i]!=null)--%>
	<%--{--%>
	<%--sss=str[i];--%>
	<%--%>--%>
	<%--<div class="courses_tubiao"> </div>--%>
	<%--<font size=3--%>
	<%--style="line-height: 60px; position: relative; left: 40px;">--%>
	<%--<a href="download.action?fileName=<%= i%>"><%= str[i]%></a></font>--%>

	<%--<font size=3 style="position: absolute; right: 400px;">--%>
	<%--<a onclick="return fun()" href="deletefile?fileName=<%= i%>">删除</a>--%>
	<%--</font>--%>

	<%--<br />--%>
	<%--<%--%>
	<%--}--%>
	<%--}--%>
	<%--%>--%>

	<%--</div>--%>


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
