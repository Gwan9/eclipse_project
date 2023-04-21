<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewCounter.jsp</title>
</head>
<body>

<%! // 멤버변수
int cnt = 0;
%>
<% // 지역변수
cnt ++ ;
%>
	<h1>현재 페이지방문횟수 : <%=cnt %>회</h1>
</body>
</html>