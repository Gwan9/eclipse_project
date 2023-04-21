
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Date d = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년/MM월/dd알/hh시/mm분/ss초");
	
	String time = sdf.format(d);
	
	
	%>
	<h1>오늘의 날짜 현재시간 : <%= time %></h1>
	<!-- h1태그로 오늘날짜 현재시간 출력 -->
</body>
</html>