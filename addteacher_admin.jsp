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
    <script type="text/javascript">
        window.onload=function()
        {
            var bt=document.getElementById("bt");
            bt.onclick=function()
            {
                if(document.getElementById("inputId").value=="")
                {
                    alert("教师工号不能为空!");

                    return false;
                }
                else if(document.getElementById("inputName").value=="")
                {
                    alert("教师姓名不能为空!");

                    return false;
                }

            }
        }
    </script>

    <SCRIPT LANGUAGE="JavaScript">
        <!--
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
        -->

    </script>
    <script>
        function fun(){
            if(confirm("确认输入正确的教师信息了吗？")){
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
        <div class="menusel" style="width:250px;margin-top: 0;">
            <h2><a href="index_admin.jsp">首页</a></h2>
        </div>
        <div id="menu1" class="menusel" style="width:250px;">
            <h2><a href="show_admin.action">学生名单</a></h2>
            <div class="position">
                <ul class="typeul">
                    <li ><a href="show_admin.action">查看学生名单</a></li>
                    <li class="lli"><a href="add_admin.jsp">导入学生信息</a></li>
                </ul>
            </div>
        </div>
        <div id="menu2" class="menusel" style="width:250px;">
            <h2><a href="showTeacher_admin.action">教师名单</a></h2>
            <div class="position">
                <ul class="typeul">
                    <li ><a href="showTeacher_admin.action">查看教师名单</a></li>
                    <li class="lli"><a href="upload.jsp">导入教师信息</a></li>
                </ul>
            </div>
        </div>
        <div id="menu3" class="menusel">
            <h2><a href="showmessage_admin.action">交流天地</a></h2>
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
                        <li><a href="showmessage_admin.action">师生交流平台</a></li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="right">
            <div class="right_title"  style="font-size: 40px;" ><b>面向大规模用户的师生课程管理系统</b>
                <br />
                <h1 align="center" style="position: relative;font-size: 25px;color: #01548e; ">导入教师数据</h1>
                <div style="margin-top: 10px;height: 300px;">

                    <form class="form-horizontal" action="insert_teacher_admin.action" method="post"
                          style="font-size:14px;"  name="myform"onsubmit="return fun();" >
                        <div class="form-group" >
                            <label for="inputId" class="col-sm-2 control-label"  >工号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputId" placeholder="ID" name="teacher.id" style="width: 80%;height: 40px;" onblur=IsNum(this)>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputName" class="col-sm-2 control-label"  >姓名</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputName" placeholder="Name" name="teacher.name" style="width: 80%;height: 40px;" >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label>
                                        性别： <input type="radio" name="teacher.sex" value="男" checked />男
                                        <input type="radio" name="teacher.sex" value="女" />女
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
