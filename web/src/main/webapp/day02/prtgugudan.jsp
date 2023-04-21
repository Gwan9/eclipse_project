<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prtgugudan.jsp</title>
</head>
<body>
	<!-- action 값을 따로 지정하지 않으면 자기 자신에게 리턴됨 -->

	
	
	<form action="" method="get">
		<input type="text" name="dan" id="" />
		<input type="submit" value="출력" />
	</form>
	
	
	<%
	
	String d = request.getParameter("dan");
	
	// d에 null값이 포함되어있는데 형변환하려하면 -> 500 번 오류
	if(d != null){
	int dan = Integer.parseInt(d);
		for(int i=1;i<=9;i++){
			out.println("<h1>"+dan+" * "+ i + " = "+ dan*i +"</h1>");
		}
	}
	%>
	
</body>
</html>