<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.util.List,com.se.domain.practice"%>
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

    <script>
        function check() {
            var flag = 0;
            var _radio = document.getElementById("myForm").getElementsByTagName("input");//获取单选框集合
            for (var i = 0; i < _radio.length-1; i++)
                if (_radio[i].checked == true) {
                    flag++;

                }
            if (flag!=10) {
                alert("还有题目未做!");
                return false;
            }
            else {
                if(confirm("确认提交吗？")){
                    return true
                }
                else
                {return false}
            }
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
                        href="changepw_stu.action?changeid=${sessionScope.value}">修改密码</a></font>
            </p>
            <p>
                <font size=3><a
                        href="history.action?id=${sessionScope.value}">历史记录 </a><font
                        size=3><a href="logout.action">退出</a></font>
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

</div>
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
                        <a href="index_stu.jsp">首页</font></a>
                    </div></td>
                    <td height="31" width="130"><div class="titlebt">
                        <a href="showfile_stu.action">下载课件</a>
                    </div></td>
                    <td height="31" width="130"><div class="titlebt">
                        <a href="teach_stu.action">查看大纲</a>
                    </div></td>
                    <td height="31" width="130"><div class="titlebt">
                        <a href="Practice_stu.jsp"><font color="#00AEAE">习题训练</a>
                    </div></td>
                    <td height="31" width="130"><div class="titlebt">
                        <a href="showexp_stu.action">教学实验</a>
                    </div></td>
                    <td height="31" width="130"><div class="titlebt">
                        <a href="showmessage_stu.action">交流天地</a>
                    </div></td>
                    <td width="16" valign="top"><img
                            src="picture/nav-right-bg.gif" width="0" height="29"></td>
                </tr>
                </tbody>
            </table></td>
        </tr>
        <div style="background: #ffffff; height: 1024px">
            <form action="practice_stu_result.action" id="myForm" method="post"
                  onsubmit="return check();">
                <input type="hidden" name="id"
                       value=<%=(int)session.getAttribute("value") %> />
                <%
                    int i=0;
                    List<practice> students =(List<practice>) request.getAttribute("practList"); //important!
                    for (practice student : students) {

                %>

                <font size=3 style="line-height: 32px;"><%=++i%>、<%=student.getSubject()%></font><br />
                <font size=3 style="line-height: 32px;"><input
                        name="question[<%=i %>]" type="hidden"
                        value="<%=student.getSubject()%>" /></font> <font size=3
                                                                          style="line-height: 32px;"><input name="no[<%=i %>]"
                                                                                                            type="radio" value="A" />A、<%=student.getA()%></font> <font size=3
                                                                                                                                                                        style="line-height: 32px;"><input name="no[<%=i %>]"
                                                                                                                                                                                                          type="radio" value="B" />B、<%=student.getB()%></font><br /> <font size=3
                                                                                                                                                                                                                                                                            style="line-height: 32px;"><input name="no[<%=i %>]"
                                                                                                                                                                                                                                                                                                              type="radio" value="C" />C、<%=student.getC()%></font> <font size=3
                                                                                                                                                                                                                                                                                                                                                                          style="line-height: 32px;"><input name="no[<%=i %>]"
                                                                                                                                                                                                                                                                                                                                                                                                            type="radio" value="D" />D、<%=student.getD()%></font> <font size=3
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        style="line-height: 32px;"><input name="exid[<%=i %>]"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          type="hidden" value="<%=student.getId()%>" /></font> <font size=3
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     style="line-height: 32px;"><input name="as[<%=i %>]"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       type="hidden" value="<%=student.getAnswer()%>" /></font><br />
                <br />
                <%
                    }
                %>
                <input type="submit" value="提交" />
            </form>

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