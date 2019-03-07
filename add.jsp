<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en">
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

    <script src="css/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="css/bootstrapvalidator-master/src/js/jquery-1.10.2.js"></script>
    <link href="css/bootstrap-3.3.7-dist/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="css/bootstrapvalidator-master/src/js/bootstrapValidator.js"></script>
    <link href="css/bootstrapvalidator-master/src/css/bootstrapValidator.css"/>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        window.onload=function()
        {
            var bt=document.getElementById("bt");
            bt.onclick=function()
            {
                if(document.getElementById("inputId").value=="")
                {
                    alert("学生学号不能为空!");

                    return false;
                }
                if(document.getElementById("inputName").value=="")
                {
                    alert("学生姓名不能为空!");

                    return false;
                }
                else if(document.getElementById("inputClass").value=="")
                {
                    alert("学生班级不能为空!");

                    return false;
                }

            }
        }
    </script>

    <SCRIPT LANGUAGE="JavaScript">

        function IsNum(theField)
        {
            if (!IsNum2(theField.value))
            {alert("请输入正确的学号格式（数字）！");
                theField.focus();
                theField.value = '';}
        }
        function IsNum2(s)
        {
            var Number = "0123456789";
            for (i = 0; i < s.length;i++)
            {
// Check that current character isn't whitespace.
                var c = s.charAt(i);
                if (Number.indexOf(c) == -1) return false;
            }
            return true
        }


        function IsNum1(theField)
        {
            if (!IsNum3(theField.value))
            {alert("请输入正确的班级格式（数字）！");
                theField.focus();
                theField.value = '';}
        }
        function IsNum3(s)
        {
            var Number = "0123456789";
            for (i = 0; i < s.length;i++)
            {
// Check that current character isn't whitespace.
                var c = s.charAt(i);
                if (Number.indexOf(c) == -1) return false;
            }
            return true
        }
    </script>
    <script>
        function fun(){
            if(confirm("确认输入正确的学生信息了吗？")){
                alert('操作成功!');
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
            </div>
            </br>
            <h1 align="center" style="position: relative;font-size: 25px;color: #01548e; ">导入学生数据</h1>
            <div style="margin-top: 10px;height: 300px;">
                <!--按钮-->
                <%--<div style="margin-bottom: 10px;">--%>
                <%--<button type="button" class="btn btn-primary" onclick="location='output.action?format=xls'">导出花名册</button>--%>
                <%--<button type="button" class="btn btn-primary" onclick="location='add.jsp'">导入数据</button>--%>
                <%--</div>--%>
                <%--<a href="#" class="button grey">导出花名册</a> <a href="#"--%>
                <%--class="button grey">导入数据</a>--%>
                <!--正文-->
                <br/>


                <form class="form-horizontal" action="insert_student.action" method="post"
                      style="font-size:14px;"  name="myform"onsubmit="return fun();" >
                    <div class="form-group" >
                        <label for="inputId" class="col-sm-2 control-label"  >学号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputId" placeholder="ID" name="student.id" style="width: 80%;height: 40px;" onblur=IsNum(this)>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label"  >姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputName" placeholder="Name" name="student.name" style="width: 80%;height: 40px;" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputClass" class="col-sm-2 control-label"  >班级</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputClass" placeholder="ClassNumber" name="student.class_number" style="width: 80%;height: 40px;" onblur=IsNum1(this)>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    性别： <input type="radio" name="student.sex" value="男" checked />男
                                    <input type="radio" name="student.sex" value="女" />女
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" style="margin: 0px;">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary" id="bt">确认提交</button>
                        </div>
                    </div>
                </form>


                <%--<div class="addstudent">--%>

                <%--<form action="insert_student.action" method="post"--%>
                <%--onsubmit="return check();">--%>
                <%--<p>--%>
                <%--学号：<input class="text-input medium-input" type="text"--%>
                <%--name="student.id" /><span id="s1"></span>--%>
                <%--</p>--%>
                <%--<p>--%>
                <%--姓名：<input class="text-input medium-input" type="text"--%>
                <%--name="student.name" /><span id="s2"></span>--%>
                <%--</p>--%>

                <%--<p>--%>
                <%--性别： <input type="radio" name="student.sex" value="男" checked />男--%>
                <%--<input type="radio" name="student.sex" value="女" />女--%>
                <%--</p>--%>
                <%--<div style="text-align: left; position: relative; left: 20px;">--%>
                <%--<input type="submit" value="提交" />--%>
                <%--</div>--%>
                <%--</form>--%>

                <%--</div>--%>
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
