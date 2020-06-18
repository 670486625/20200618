<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/loginOrRegister.css">
<script src="../js/menu.js"></script>
</head>
<body>

<div class="title">
		<div>
			<%
				String state = (String) session.getAttribute("myState");
				String name = (String) session.getAttribute("myName");
				//System.out.println(state);
				try {
					if (state.equals("") || state.equals("tourist")) {
						out.println("<img  src=\"../img/zhu.jpg\" style=\"border-radius: 50%;width:70px;height:70px;\">");
						out.println("<br>");
						out.println("<p>" + "未登录" + "</p>");
						out.println("<br>");
						out.println("<p>" + "(tourist)" + "</p>");
					} else if (state.equals("teacher")) {
						out.println("<img  src=\"../img/horse.jpg\" style=\"border-radius: 50%;width:70px;height:70px;\">");
						out.println("<br>");
						out.println("<p>" + name + "</p>");
						out.println("<br>");
						out.println("<p>(" + state + ")</p>");
					} else if (state.equals("student")) {
						out.println(
								"<img  src=\"../img/tuanzi.jpg\" style=\"border-radius: 50%;width:70px;height:70px;\">");
						out.println("<br>");
						out.println("<p>" + name + "</p>");
						out.println("<br>");
						out.println("<p>(" + state + ")</p>");
					}
				} catch (Exception e) {
					out.println("<img  src=\"../img/zhu.jpg\" style=\"border-radius: 50%;width:70px;height:70px;\">");
					out.println("<br>");
					out.println("<p>" + "未登录" + "</p>");
					out.println("<br>");
					out.println("<p>" + "(tourist)" + "</p>");
				}
			%>
		</div>

	</div>

<!-- 左侧功能列表 -->
	<div class="menu">

		<div>
			<p onclick="accordion(1)">注册</p>
			<ul id="ul1">
				<li><a href="../jsp/teacherRegister.jsp">老师注册</a></li>
				<li><a href="../jsp/studentRegister.jsp">学生注册</a></li>
			</ul>
		</div>
		<div>
			<p onclick="accordion(2)">登陆</p>
			<ul id="ul2">
				<li><a href="../jsp/teacherLogin.jsp">老师登陆</a></li>
				<li><a href="../jsp/studentLogin.jsp">学生登陆</a></li>
			</ul>
		</div>
		<div>
			<p onclick="accordion(3)">老师功能</p>
			<ul id="ul3">
				<li><a href="../jsp/setHomework.jsp">布置作业</a></li>
				<li><a href="../jsp/reviewHomework.jsp">评审作业</a></li>
			</ul>
		</div>
		<div>
			<p onclick="accordion(4)">学生功能</p>
			<ul id="ul4">
				<li><a href="../jsp/submitHomework.jsp">提交/修改作业</a></li>
				<li><a href="../jsp/checkGrade.jsp">查看成绩</a></li>
			</ul>
		</div>
	</div>
	<img
		style="position: absolute; left: 300px; top: 50px; width: 1000px; height: 600px; border-radius: 50px;"
		src="../img/cat2.jpg">

</body>
</html>