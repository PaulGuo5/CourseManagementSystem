<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="java.util.List,com.se.domain.experiment" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
    Object username = session.getAttribute("username");
    if (null == username) {

        response.sendRedirect("login.jsp");
    }
%>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>面向大规模用户的师生课程管理系统</title>
    <link href="css/css.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link href="css/bootstrap-3.3.7-dist/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
    <link href="css/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script language="javascript" type="text/javascript">
        function check() {
            var flag1 = 1, flag2 = 1;
            if (document.getElementsByName("experiment")[0].value == "") {
                flag1 = 0;
            }
            if (document.getElementsByName("requires")[0].value == "") {
                flag2 = 0;
            }
            if (flag1 == 1 && flag2 == 1) {
                return true;
            }
            if (flag1 == 0) {
                alert("实验标题不能为空!");
            }
            if (flag2 == 0) {
                alert("实验要求不能为空!");
            }
            return false;
        }

        function fun() {
            if (confirm("确认修改实验吗？")) {
                alert('操作成功!');
                return true
            }
            else {
                return false
            }
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
                    <li><a href="show.action">查看学生名单</a></li>
                    <li class="lli"><a href="add.jsp">导入学生信息</a></li>
                </ul>
            </div>
        </div>
        <div id="menu2" class="menusel" style="width:130px;">
            <h2><a href="showfile.action">查看课件</a></h2>
            <div class="position">
                <ul class="typeul">
                    <li><a href="showfile.action">查看课件列表</a></li>
                    <li class="lli"><a href="upload.jsp">上传课件</a></li>
                </ul>
            </div>
        </div>
        <div id="menu3" class="menusel" style="width:130px;">
            <h2><a href="teach.action">教学大纲</a></h2>
            <div class="position">
                <ul class="typeul">
                    <li><a href="teach.action">查看教学大纲</a></li>
                    <li class="lli"><a href="addteach.jsp">上传教学大纲</a></li>
                </ul>
            </div>
        </div>
        <div id="menu4" class="menusel" style="width:130px;">
            <h2><a href="practice.action">习题问答</a></h2>
            <div class="position">
                <ul class="typeul">
                    <li><a href="practice.action">查看习题列表</a></li>
                    <li class="lli"><a href="addpractice.jsp">导入习题练习</a></li>
                </ul>
            </div>
        </div>
        <div id="menu5" class="menusel" style="width:130px;">
            <h2><a href="showexp.action">教学实验</a></h2>
            <div class="position">
                <ul class="typeul">
                    <li><a href="showexp.action">查看实验列表</a></li>
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
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000"
                         style="weight:180px;">
                        <!-- 轮播（Carousel）指标 -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>
                        <!-- 轮播（Carousel）项目 -->
                        <div class="carousel-inner" style="weight:180px;height:250px;">
                            <div class="item active">
                                <img src="images/left_1.jpg" alt="First slide">

                            </div>
                            <div class="item">
                                <img src="images/left_2.jpg" alt="Second slide">

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
            <div class="right_title" style="font-size: 40px;"><b>面向大规模用户的师生课程管理系统</b>
                <br/></div>
            <div style=" height: 500px;width:650px;float:left;">
                </br>
                <%--<button type="button" class="btn btn-primary" onclick="location='addexp.jsp'" >新增实验</button>--%>
                <h1 align="center" style="position: relative;font-size: 25px;color: #01548e; ">课程实验</h1>
                </br>
                <div>
                    <% experiment exp = (experiment) request.getAttribute("exp"); %>
                    <form class="bs-example bs-example-form" role="form" action="updateexp.action" method="post" onsubmit="return check();">
                        <div class="input-group">
                        <div style="color: #337ab7;font-size: 15px;"><strong>实验标题</strong></div>
                            <input class="form-control"type="text" name="experiment"
                                   value="<%=exp.getExperiment()%>"/>
                        </div>
                        <%--<span style="color:red;" id="s1"></span>--%>
                        </br>
                        <div class="input-group">
                        <div style="color: #337ab7;font-size: 15px;"><strong>实验要求</strong></div>
                            <textarea class="form-control"rows="15" cols="50" name="requires"><%=exp.getRequires()%></textarea>
                            <input type="hidden" name="expid" value="<%=exp.getId() %>"/>
                            <%--<span style="color:red;" id="s2"></span>--%>
                        </div>
                            </br>
                            <div>
                                <button class="btn btn-primary" onclick="return fun()" type="submit" value="提交">确认修改
                                </button>
                            </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="clear"></div>
        <div class="huoban">
            <div class="huoban_title"><img src="images/title_2.gif"/></div>
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
    <div class="bottom" style="color: #337ab7;"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>Email：441858734@qq.com
        <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>联系电话：13115923660 <span
                class="glyphicon glyphicon-globe" aria-hidden="true"></span>QQ：441858734<br/>
        <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>版权所有 2017-2018
    </div>
</div>
</body>
<script type="text/javascript" src="css/meun.js">
</script>
</html>
