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
	/* 
		HttpServletRequest 		request 객체
		*/
		
		// 한글처리
		request.setCharacterEncoding("UTF-8");
	
		// get, post 방식 ?
		String method = request.getMethod();
		
		String ip = request.getRemoteAddr();
		
		//Querystring
		//?id=aaa%pw=bbb
		
		String queryString = request.getQueryString();
		
		out.println("<h2> method : " + method + "</h2>");
		
		out.println("<h2> ip : " + ip + "</h2>");
		
		out.println("<h2> QueryString : " + queryString + "</h2>");
	%>
</body>
</html>