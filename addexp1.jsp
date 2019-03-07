<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>师生课程管理平台</title>

    <link rel="stylesheet" media="screen" href="style.css?1">
    <link rel="alternate" type="application/rss+xml" title="RSS"
          href="http://www.csszengarden.com/zengarden.xml">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Dave Shea">
    <meta name="description"
          content="A demonstration of what can be accomplished visually through CSS-based design.">
    <meta name="robots" content="all">


    <!--[if lt IE 9]>
    <script src="script/html5shiv.js"></script>
    <![endif]-->
    <script language="javascript" type="text/javascript">
        function check()
        {
            var flag1=1,flag2=1;
            if(document.getElementsByName("experiment")[0].value==""){
                flag1=0;
            }
            if(document.getElementsByName("requires")[0].value==""){
                flag2=0;
            }
            if(flag1==1&&flag2==1){
                return true;
            }
            if(flag1==0){document.getElementById("s1").innerHTML="实验标题不能为空";}
            if(flag2==0){document.getElementById("s2").innerHTML="实验要求不能为空";}
            return false;
        }

        function fun(){
            if(confirm("实验上传后不可修改，确认吗？")){
                return true
            }
            else
            {return false}
        }

    </script>
</head>



<body id="css-zen-garden" bgcolor="F1FAFA">

<div class="page-wrapper">
    <div class="information_bg">
        <div class="information">
            <!--个人信息-->


            <p>
                <font size=3>欢迎您${sessionScope.username}!</font>
            </p>
            <p>
                <font size=3>学号${sessionScope.value}!</font>
            </p>
            <p>
                <font size=3> <a
                        href="changepw.action?changeid=${sessionScope.value}">修改密码</a></font>
            </p>
            <p>
                <font size=3><a href="logout.action">退出</a></font>
            </p>
        </div>
    </div>
    <!--日历-->
    <div class="summary" id="calendar" role="article">
        <div id="blog-calendar" style="">
            <table id="blogCalendar" class="Cal" cellspacing="0" cellpadding="0"
                   title="日历">
                <tbody>
                <tr>
                    <td colspan="7"><table class="CalTitle" cellspacing="0">
                        <tbody>
                        <tr>
                            <td align="center" class="CalNextPrev"><a
                                    href="javascript:void(0);"
                                    onclick="loadBlogCalendar(&#39;2017/03/01&#39;);return false;">&lt;</a></td>
                            <td style="width: 200px; text-align: center;"><font
                                    color="black">2017年6月</font></td>
                            <td class="CalNextPrev" align="right"><a
                                    href="javascript:void(0);"
                                    onclick="loadBlogCalendar(&#39;2017/05/01&#39;);return false;">&gt;</a></td>
                        </tr>
                        </tbody>
                    </table></td>
                </tr>
                <tr>
                    <th class="CalDayHeader" align="center" abbr="日" scope="col">日</th>
                    <th class="CalDayHeader" align="center" abbr="一" scope="col">一</th>
                    <th class="CalDayHeader" align="center" abbr="二" scope="col">二</th>
                    <th class="CalDayHeader" align="center" abbr="三" scope="col">三</th>
                    <th class="CalDayHeader" align="center" abbr="四" scope="col">四</th>
                    <th class="CalDayHeader" align="center" abbr="五" scope="col">五</th>
                    <th class="CalDayHeader" align="center" abbr="六" scope="col">六</th>
                </tr>
                <tr>
                    <td class="CalWeekendDay" align="center">28</td>
                    <td class="CalOtherMonthDay" align="center">29</td>
                    <td class="CalOtherMonthDay" align="center">30</td>
                    <td class="CalOtherMonthDay" align="center">31</td>
                    <td class="CalOtherMonthDay" align="center">1</td>
                    <td class="CalOtherMonthDay" align="center">2</td>
                    <td class="CalWeekendDay" align="center"><a>3</a></td>
                </tr>
                <tr>
                    <td class="CalWeekendDay" align="center"><a>4</a></td>
                    <td align="center">5</td>
                    <td align="center"><a>6</a></td>
                    <td align="center"><a>7</a></td>
                    <td align="center">8</td>
                    <td align="center">9</td>
                    <td class="CalWeekendDay" align="center">10</td>
                </tr>
                <tr>
                    <td class="CalWeekendDay" align="center">11</td>
                    <td align="center">12</td>
                    <td align="center">13</td>
                    <td align="center">14</td>
                    <td align="center">15</td>
                    <td align="center">16</td>
                    <td class="CalWeekendDay" align="center">17</td>
                </tr>
                <tr>
                    <td class="CalWeekendDay" align="center">18</td>
                    <td align="center">19</td>
                    <td align="center">20</td>
                    <td align="center">21</td>
                    <td align="center">22</td>
                    <td align="center">23</td>
                    <td class="CalWeekendDay" align="center">24</td>
                </tr>
                <tr>
                    <td class="CalWeekendDay" align="center">25</td>
                    <td align="center">26</td>
                    <td align="center">27</td>
                    <td align="center">28</td>
                    <td align="center">29</td>
                    <td align="center">30</td>
                    <td class="CalWeekendDay" align="center">1</td>
                </tr>
                <tr>
                    <td class="CalWeekendDay" align="center">2</td>
                    <td class="CalOtherMonthDay" align="center">3</td>
                    <td class="CalOtherMonthDay" align="center">4</td>
                    <td class="CalOtherMonthDay" align="center">5</td>
                    <td class="CalOtherMonthDay" align="center">6</td>
                    <td class="CalOtherMonthDay" align="center">7</td>
                    <td class="CalWeekendDay" align="center">8</td>
                </tr>
                </tbody>
            </table>
        </div>
        <script type="text/javascript">loadBlogDefaultCalendar();</script>
    </div>

    <!--留言板-->
    <div class="preamble" id="zen-preamble" role="article"></div>


    <div class="main supporting" id="zen-supporting" role="main">
        <div class="explanation" id="zen-explanation" role="article">
            <div class="top-background"></div>
            <tr>
                <!--标签栏-->
                <td valign="top"><table width="100%" height="31" border="0"
                                        cellpadding="0" cellspacing="0" class="left_topbg" id="table2"
                                        style="background-image: url(picture/content-bg.gif)">
                    <tbody>
                    <tr>
                        <td width="60" valign="top">
                        <td height="31" width="130"><div class="titlebt">
                            <a href="index.jsp">首页</a>
                        </div></td>
                        <td height="31" width="130"><div class="titlebt">
                            <a href="show.action">学生名单</font></a>
                        </div></td>
                        <td height="31" width="130"><div class="titlebt">
                            <a href="showfile.action">查看课件</a>
                        </div></td>
                        <td height="31" width="130"><div class="titlebt">
                            <a href="teach.action">教学大纲</a>
                        </div></td>
                        <td height="31" width="130"><div class="titlebt">
                            <a href="practice.action">习题问答</a>
                        </div></td>
                        <td height="31" width="130"><div class="titlebt">
                            <a href="showexp.action"><font color="#00AEAE">教学实验</a>
                        </div></td>
                        <td height="31" width="130"><div class="titlebt">
                            <a href="showmessage.action">交流天地</a>
                        </div></td>
                        <td width="16" valign="top"><img
                                src="picture/nav-right-bg.gif" width="0" height="29"></td>
                    </tr>
                    </tbody>
                </table></td>
            </tr>
            <div style="background: #ffffff; height: 1024px">
                <div class="experiment">
                    <form action="addexp.action" method="post"
                          onsubmit="return check();">
                        实验标题<input type="text" name="experiment" /><span id="s1"></span><br />
                        实验要求
                        <textarea rows="16" cols="50" name="requires"></textarea>
                        <span id="s2"></span><br /> <input onclick="return fun()"
                                                           type="submit" value="提交" />
                    </form>
                </div>
            </div>
            <!--页脚-->

        </div>

    </div>

    <div class="extra1" role="presentation"></div>
    <div class="extra2" role="presentation"></div>
    <div class="extra3" role="presentation"></div>
    <div class="extra4" role="presentation"></div>
    <div class="extra5" role="presentation"></div>
    <div class="extra6" role="presentation"></div>
</body>

</html>