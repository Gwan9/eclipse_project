<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>b.jsp</title>
</head>
<body>
	<!-- a.jsp 파일 불러오기 -->
	<%-- <%@include file="a.jsp"  %> --%>
	<!--include 지시자 copy&paste 효과-->
	<%-- 컴파일된 결과의 삽입 --%>
	<%-- jsp actoin tag --%>
	<jsp:include page="a.jsp"></jsp:include>
	<%
	// a 변수값을 출력
	/* out.println(a); */
	%>
	<%-- jsp 주석은 사용자 브라우저에 안보임 --%>
	
	<!-- 자브스크립트 주석은 사용자 브라우저에 보임
	dbip : 129.168.0.3
	user : scott
	password : tiger
	port : 1621
	
	 -->
	<h3>파일 가져오는 방법 2가지</h3>
</body>
</html>