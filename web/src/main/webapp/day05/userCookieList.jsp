<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userCookieList.jsp</title>
</head>
<body>
	<%
	/* 요청객체에서 쿠키 */
	Cookie[] clist = request.getCookies();
	
	for(Cookie c : clist){
		out.println("<h2> 쿠키 : " +c.getName()+ ":" + c.getValue()+ "</h2>" );
	}
	%>
</body>
</html>