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
		String homeworkTitle = (String) request.getParameter("homeworkTitle");
		String homeworkRequire = (String) request.getParameter("homeworkRequire");
%>


	<div>
		<a href="../jsp/index.jsp"><img
			style="height: 120px; width: 120px; border-radius: 50%;"
			src="../img/turnback1.jpg"></a>
	</div>


	<div class="content" align="center">
		<form action="../databaseHelper/setHomeworkHelper.jsp">
			<div class="top">布置作业</div>
			<div class="box">
				<div class="box-input">
					作业题目<input name="homeworkTitle" type="text">
				</div>
			</div>
			<div class="box">
				<div class="box-input">
					作业要求<input name="homeworkRequire" type="text">
				</div>
			</div>
			<div>
				<input type="submit" class="button" value="布置">
			</div>
		</form>

	</div>

</body>
</html>