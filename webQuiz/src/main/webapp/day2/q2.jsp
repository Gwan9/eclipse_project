<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
  <input type="text" name="input" id="input">
  <input type="submit" value="submit"></input>
</form>


	<%
	String input = request.getParameter("input");
	
	if(input == null){
	 %>alert('값을 입력하세요.');<%
	 }%>
	
</body>
</html>