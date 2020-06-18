<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.ResultSet"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>

<jsp:useBean id="mario" class="jdbc.Mario" />
	<%
		request.setCharacterEncoding("UTF-8");
		String username = (String) request.getParameter("username");
		String userpassword = (String) request.getParameter("userpassword");//获得用户名和密码

		//数据库操作
		String sql = "select * from teacher where teacherName=" + "'" + username + "'";//定义查询语句
		ResultSet rs = mario.executeQuery(sql);//执行sql语句
		//只判断一条数据
		if (rs.next()) {
			if (userpassword.equals(rs.getObject("teacherPassword"))) {
				//设置session
				session.setAttribute("myName", username);
				session.setAttribute("myState", "teacher");
				out.print("<script>alert('登录成功'); window.location='../jsp/index.jsp' </script>");
			} else {
				out.print("<script>alert('密码错误'); window.location='../jsp/teacherLogin.jsp' </script>");
			}
		} else {
			out.print("<script>alert('无此账号'); window.location='../jsp/teacherLogin.jsp' </script>");
		}

		mario.closeConnection();
	%>


</body>
</html>