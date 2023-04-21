<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 스크립트 요소
		1. 스크립트릿
		2. 표현식 
		3. 선언
		-->
		<!-- JSP Expression -->
		<%
		//실행부 : _jspService() -> 지역변수
		for(int i=0; i<=100;i++){
			sum += i;
		}
		%>
		<h1>1부터 100까지 누적합계 : <%= sum %></h1>
		
		
		<%! 
		// ! : 변수 선언부 표시 : 멤버변수, 전역변수
		// 변수 선언부가 아래에 있어도 실행됨
		// 이유 :sumValue.jsp ==> sumValue_jsp.java ==> sumValue_jsp.class
		// 변환된 jsp 파일에서 선언부가 멤버변수로 맨위로 실행부는 _jspService()
		int sum = 0;
		%>
</body>
</html>