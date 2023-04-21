<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hap.jsp</title>
</head>
<body>
	
	<%
	
	String num1 = request.getParameter("num1"); 
	String num2 = request.getParameter("num2");
	/* String result = request.getParameter("result"); */ 
	
	int n1 = 0;
	int n2 = 0;
	int n3 = 0;
	
	if(num1 != null && num2 != null){
		
		n1 = Integer.parseInt(num1);
		n2 = Integer.parseInt(num1);
		n3 = n1+n2;
	}
	%>
	<form action="">
		<input type="text" name="num1" id="" value="<%=n1%>"/>+
		<input type="text" name="num2" id="" value="<%=n2%>" />
		<input type="submit" value="=" />
		<input type="text" name="result" id="" value="<%=n3 %>" />
	</form>
	
	
    
</body>
</html>