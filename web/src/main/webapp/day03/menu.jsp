<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu.jsp</title>
</head>
<body>
	<h2>menu.jsp 입니다.</h2>
	<%
		String msg = request.getParameter("msg");
	
	%>
	<h3><%=msg %></h3>
</body>
</html>