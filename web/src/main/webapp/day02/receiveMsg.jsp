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
	//따로 선언하지 않아도 쓸 수 있는 변수
	//지금 사용하는 코드는 _jspService() 안쪽으로 들어가게 된다.
	//미리 선언되어 있는 지역변수 : JSP 내장객체
	
	String msg = request.getParameter("msg");

	
	
	//브라우저에 h2 태그 출력
	
	out.println("<h2>"+msg+"</h2>");
	
	

	%>
	<h2><%= msg %></h2>
</body>
</html>