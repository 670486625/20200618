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
		String studentName = (String) request.getParameter("studentName");
		String homeworkGrade = (String) request.getParameter("homeworkGrade");
		double grade=Double.valueOf(homeworkGrade.toString());
		
		//session
		String myName = (String) session.getAttribute("myName");
		
		//数据库
		String sql1 = "update studentHomework set homeworkGrade="+grade+" where studentName='"+studentName+"' and homeworkNum="+num;
		int i1 = mario.executeUpdate(sql1);
		out.print("<script>alert('提交/修改成功'); window.location='../jsp/index.jsp' </script>");
		
%>

</body>
</html>