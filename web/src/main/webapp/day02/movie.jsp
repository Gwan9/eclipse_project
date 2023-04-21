<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie.jsp</title>
<style>
	img {
		width : 200px;
		height : 200px;
	}
</style>
</head>
<body>
	<h1>영화포스터</h1>
	<%
	// script 요소
	// 1. 스크립트랫(scriptlet)
	for(int i=1;i<=3;i++){
	%>
	<img src="../images/movie_image<%=i%>.jpg" alt="" />
	<% 
	}
	%>
</body>
</html>