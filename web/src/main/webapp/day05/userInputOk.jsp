<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userInputOk.jsp</title>
</head>
<body>
	<%
		// Cookie
		// 서버가 사용자 브라우저에 남기는 작은 정보의 조각(for사용자 추적)
		
		
		
		
		String txt = request.getParameter("txt");
		out.println("<h2>"+ txt +"</h2>");
		
		Cookie c = new Cookie("txt", txt);
		
		// 이 쿠키의 유통기한 1년
		
		//c.setMaxAge(60*60*24*365); // 60초*60분*24시간*365일 = 1년
		
		c.setMaxAge(60*1);
		// 사용자 브라우저에 저장
		
		response.addCookie(c);
		
		
		
		
	%>
	<a href="userCookieList.jsp">쿠키보러가기</a>
</body>
</html>