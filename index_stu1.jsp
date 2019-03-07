<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%  
  Object username = session.getAttribute("username");  
  if(null == username){  
        
      response.sendRedirect("login.jsp");  
  }  
%>
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
										<a href="index_stu.jsp"><font color="#00AEAE">首页</font></a>
									</div></td>
								<td height="31" width="130"><div class="titlebt">
										<a href="showfile_stu.action">下载课件</a>
									</div></td>
								<td height="31" width="130"><div class="titlebt">
										<a href="teach_stu.action">查看大纲</a>
									</div></td>
								<td height="31" width="130"><div class="titlebt">
										<a href="Practice_stu.jsp">习题训练</a>
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
				<h1 align="center" style="position: relative; top: 20px;">面向大规模用户的师生课程管理系统</h1>
				<div class="index">
					<font size=3 style="line-height: 1.5; letter-spacing: 4px;">&nbsp;&nbsp;&nbsp;&nbsp;在目前的高校学习生活中，由于教育模式的限制，师生之间的沟通和交流存在一定的局限，所以就很有必要在课堂时间之外给师生们提供一个较为自由的交互平台。为了方便师生的沟通和了解，该课程网站就可以作为是课堂教学的一种延伸，在传统的课堂授课外，师生可以通过该课程网站进行本课程的一些探讨和交流。该系统使师生的交流更加方便，促进了双方的了解，使教师更熟悉学生的学习情况，可以发布实验、大纲、上传课件、管理学生名单、发布习题。与此同时，学生能更加了解自己的学习情况和课程的进度，更好地对该课程进行进一步的学习和探究，学生还能够进行在线习题训练和问题交流、课件下载、提交实验。</font><br />
                    <br /> <font size=3 style="line-height: 1.5; letter-spacing: 4px;">&nbsp;&nbsp;&nbsp;&nbsp;不仅如此，该系统还能提高教师的教学质量，不但能够发布课堂安排的实验，还能在课外发布习题，使学生能够加深对课程的学习。学生能够通过此了解自己的学习情况，不仅能够完成实验的提交，完成课外习题，还更加容易进行学习的总结和反馈，使教师及时发现学生存在的问题，及时调整教学计划，使学生能够更好地学习。再者，该课程网站主要面对的是计算机、软件方向的教师和学生，相对比较有特殊性，许多作业，特别是编程作业难以以传统的纸质版方式来提交，并且用邮箱进行交流和提交使得教师的收缴作业难度加大，但该系统就能提供一个很好的平台方便教师在线收发作业。因此，我们需要一个能够面向大规模的课程管理系统。</font><br />
					<br /> <font size=3 style="line-height: 1.5; letter-spacing: 4px;">&nbsp;&nbsp;&nbsp;&nbsp;通过本课程的学习，要求学生能掌握计算机类专业方向的基本概念、基本原理、开发软件项目的工程化的方法和技术及在开发过程中应遵循的流程、准则、标准和规范等；学生应能掌握开发高质量软件的方法，以及有效地策划和管理软件开发活动，为学生参加大型软件开发项目打下坚实的理论基础。
						本课程注重培养学生理论应用于实践的能力，课堂上教师向学生讲述软件工程中的相关原理和概念，并通过课程设计，培养学生对整个软件开发过程的能力。本课程对提高学生的软件开发能力和项目管理能力有重要的现实意义。</font>
					<h2 align="center" style="position: relative;">教学方法</h2>
					<font size=3 style="line-height: 1.5; letter-spacing: 4px;">&nbsp;&nbsp;&nbsp;&nbsp;教师在课堂上采用多媒体教学手段授课，上课时强调理论与实践的同等重要性，不断积累教学素材指导课堂讨论和实践，以提高学生的学习兴趣。
						针对计算机类学生的学习课程特点，主讲教师根据多年的教学经验总结出了切实可行的教学方法：案例教学法和项目实践法，以提高教学质量。</font><br />
					<br /> <font size=3 style="line-height: 1.5; letter-spacing: 4px;">&nbsp;&nbsp;&nbsp;&nbsp;案例教学法：在教学中创造条件引入实例，结合软件工程理论知识给学生讲解实例、介绍具体的开发过程和方法，并提出实际问题，启发学生思考解决的方法及比较方案的优劣。</font><br />
					<font size=3 style="line-height: 1.5; letter-spacing: 4px;">&nbsp;&nbsp;&nbsp;&nbsp;项目实践法：为加强实践环节，提高学生学习的主动性，可将学生分组进行项目实践，提高学生的团队合作能力。方法是让学生利用课外时间相对独立完成一个模拟的科研项目，这些项目都是从实际项目中提炼出来的，具有典型性、客观性和启发性。教师采用点拔方式或共同探究的方式进行指导。实验进度可以和课堂教学同步，也可以在课堂教学结束后进行。这种项目练习以团队操练的方式进行。项目组根据项目需求，制定项目计划，进行分析、设计、编码和测试，运用本课程学到的各方面知识，分工协同、想办法、查资料、探寻问题的解决方案，同时在研究问题找出规律的过程中创造性地学到了知识，学生的创造能力、应用能力、综合能力和交流合作等大量非智力因素得到充分的发展。项目完成后，教师要求学生写专题论文，启发他们的思维，表达他们的见解，鼓励学生在本课程的学习中学会联系相关课程(如网络、数据结构、数据库等)的知识去思考和解决问题。</font><br />

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