<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>responseEx.jsp</title>
</head>
<body>
	<%
	int status = response.getStatus();
	out.println("<h2> status : " + status + "</h2>");
	// 200 : 정상
	// 404 : NOT FOUND 특정한 자원을 못 찾았을 때
	// 405 : doGet, doPost 
	// 500 : server side logic error
	%>
	
	<h2>다른 페이지로 이동</h2>
	
	<!-- menu.jsp로 이동 -->
	
	<ol>
		<li>forward</li>
		<%
		RequestDispatcher rd = request.getRequestDispatcher("menu.jsp");
		
		rd.forward(request,response); // 요청객체 응답을 같이 전달
		%>
		<li>redirect</li>
		<% 
			/* response.sendRedirect("menu.jsp"); */
		
		%>
	</ol>
</body>
</html>