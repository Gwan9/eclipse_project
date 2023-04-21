<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 테스트 -->
<%-- JSP 주석
	h1 태그로 구구단 3단 출력  --%>
<%for(int i=1;i<=9;i++){ %>
	<h1>3 * <%=i%> = <%=3*i%></h1>
<%}%>
</body>
</html>