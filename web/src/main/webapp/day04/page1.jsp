<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page1.jsp</title>
</head>
<body>
	<h2>page1.jsp 입니다.</h2>
	
	<%
	
		// jsp ==> _jspService() 안쪽으로 돌아가게 된다.
		// _jspService() 의 지역변수 : 내장객체
		// 내부적으로 선언되어 있어 따로 선언하지 않아도 되는 객체
		
		// out, request, response
		
		// 내장객체 4가지
		// pageContext : 현재 jsp 페이지의 Context를 나타내는 객체
		// 현재 페이지를 떠나기 전 까지 정보를 유지
		
		// request : 사용자의 요청을 객체화 시켜 놓은 것
	
		// session : 웹 브라우저의 정보를 유지하기 위한 세션정보를 저장하고 있는 객체
		// ex) login 정보 // 브라우저 종료 전 까지 정보를 유지
		
		// application : web application Context 의 정보를 저장하고 있는 객체
		// 서버종료 전 까지 유지
		
		
		
		// 내장객체 속성 , 값 지정
		pageContext.setAttribute("id1", "aaa");
		request.setAttribute("id2", "bbb");
		session.setAttribute("id3", "ccc");
		application.setAttribute("id4", "ddd");
		
		Object obj1 = pageContext.getAttribute("id1");
		String id1 = (String)obj1;
		
		Object obj2 = request.getAttribute("id2");
		String id2 = (String)obj2;
		
		Object obj3 = session.getAttribute("id3");
		String id3 = (String)obj3;
		
		Object obj4 = application.getAttribute("id4");
		String id4 = (String)obj4;
		
		out.println("<h3> pageContext : " + id1 + "</h3>");
		out.println("<h3> request : " + id2 + "</h3>");
		out.println("<h3> session : " + id3 + "</h3>");
		out.println("<h3> application : " + id4 + "</h3>");
		
		// RequestDispatcher rd = request.getRequestDispatcher("page2.jsp");
		
		// rd.forward(request, response);
		// FORWARD : 요청객체 응답객체 가지고 넘어감
		// 주소가 바뀌지 않고 넘어간 페이지의 화면만 보여줌
		
		response.sendRedirect("page2.jsp");
		// 새롭게 요청 , 페이지가 바뀌면서 주소도 바뀜
		// pageContext, request : null => 가져가지않음
		
	%>
</body>
</html>