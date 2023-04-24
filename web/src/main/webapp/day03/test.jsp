<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
</head>
<body>
	<%!
		//선언부
		int a;
	%>
	<%  // Scriptlet
		int a = 10;
	
		out.println("<h3> out은 내장 객체 </h3>");

	%>
	<h1>Hello JSP World</h1>
	
	<h3>a 변수의 값 : <%=a %></h3>
</body>
</html>