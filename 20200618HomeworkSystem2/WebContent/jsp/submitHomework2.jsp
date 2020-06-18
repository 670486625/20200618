<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/loginOrRegister.css">
</head>
<body>

<%
		//表单
		request.setCharacterEncoding("UTF-8");
		String homeworkNum = (String) request.getParameter("num");

%>

	<div>
		<a href="../jsp/submitHomework.jsp"><img
			style="height: 120px; width: 120px; border-radius: 50%;"
			src="../img/turnback1.jpg"></a>
	</div>

	<div class="content" align="center">
		<form action="../databaseHelper/submitHomeworkHelper.jsp">
			<div class="top">作业提交</div>
			<div class="box">
				<div class="box-input">
					作业内容<input name="homeworkContent" type="text">
				</div>
			</div>
			<input name="homeworkNum" type="hidden" value=<%=homeworkNum%>>
			<div>
				<input type="submit" class="button" value="提交">
			</div>
		</form>

	</div>

</body>
</html>