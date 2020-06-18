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

		String[] teacherNameSet = new String[50];
		int teacherNameSetIndex = 0;
		//数据库操作
		String sql = "select * from teacher";//定义查询语句
		ResultSet rs = mario.executeQuery(sql);//执行sql语句

		while (rs.next()) {
			teacherNameSet[teacherNameSetIndex] = (String) rs.getObject("teacherName");
			teacherNameSetIndex++;
		}

		//获取表单内容
		request.setCharacterEncoding("UTF-8");
		String username = (String) request.getParameter("username");
		String userpassword1 = (String) request.getParameter("userpassword1");
		String userpassword2 = (String) request.getParameter("userpassword2");

		//判断空
		boolean notNull = true;
		if (username.equals("") || userpassword1.equals("") || userpassword2.equals("")) {
			notNull = false;
		}

		//判断同名
		boolean differentName = true;
		for (int i = 0; i < teacherNameSetIndex; i++) {
			if (teacherNameSet[i].equals(username)) {
				differentName = false;
			}
		}

		//判断两次密码
		boolean samePassword = false;
		if (userpassword1.equals(userpassword2)) {
			samePassword = true;
		}
		
		if (notNull && samePassword && differentName ) {
			//数据库操作
			String sql2 = "insert into teacher values('" + username + "','" + userpassword1 + "')";
			//System.out.println("1");
			int i = mario.executeUpdate(sql2);
			//System.out.println("2");
			out.print("<script>alert('注册成功'); window.location='../jsp/index.jsp' </script>");
		} else {
			if(!notNull){
				out.print("<script>alert('名字密码不能为空'); window.location='../jsp/teacherRegister.jsp' </script>");
			}
			else if(!differentName){
				out.print("<script>alert('该名字已被注册'); window.location='../jsp/teacherRegister.jsp' </script>");
			}
			else if(!samePassword){
				out.print("<script>alert('两次输入密码不一致'); window.location='../jsp/teacherRegister.jsp' </script>");
			}
		}
		mario.closeConnection();
	%>

</body>
</html>