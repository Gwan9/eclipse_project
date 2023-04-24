<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan.jsp</title>
</head>
<body>
	
	
	<%
		// PrintWriter out = resp.getWriter();
		for(int i = 1; i<=9; i++){
			
	%>
	<h1>3 * <%=i %> = <%=3*i %></h1>
		<% 
		}
		%>
</body>
</html>