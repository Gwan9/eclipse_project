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
		int a = 10;
	
		out.println("<h1>" +  a + "</h1>");
	%>
	<script type ="text/javascript">
	<%
		for(int i=0;i<100;i++){
	%>
			console.log("나 집에 갈래");
		<%}%>
		
	// jsp에서 먼저 자바언어를 자바스크립트를 변환
	// 변환된 자바스크립트가 html로 가서 실행
	</script>
</body>
</html>