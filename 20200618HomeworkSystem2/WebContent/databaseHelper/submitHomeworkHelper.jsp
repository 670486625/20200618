<%@ page language="java" contentType="text/html; charset=UTF-8"
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
		//表单
		request.setCharacterEncoding("UTF-8");
		String homeworkNum = (String) request.getParameter("homeworkNum");
		int num=Integer.parseInt(homeworkNum);
		String homeworkContent = (String) request.getParameter("homeworkContent");
		
		//session
		String myName = (String) session.getAttribute("myName");
		
		//数据库
		String sql = "insert into studentHomework values(" + num + ",'" + myName + "','"+homeworkContent+"',-99) "
		+"ON DUPLICATE KEY UPDATE homeworkContent='"+homeworkContent+"'";
		int i = mario.executeUpdate(sql);
		out.print("<script>alert('提交/修改成功'); window.location='../jsp/index.jsp' </script>");
		
%>


</body>
</html>