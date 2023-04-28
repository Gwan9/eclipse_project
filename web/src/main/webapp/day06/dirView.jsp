<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dirView.jsp</title>
</head>
<body>
	<%
	String path = request.getRealPath("/upload");
	out.println("파일이 저장되어 있는 os 경로 : " + path);

	File f = new File(path);
	if (f.isDirectory()) {
		out.println("디렉토리 맞음 ");
		String[] fList = f.list();
		for (String x : fList) {
			out.println("<h2>" + x + "</h2>");
		}
		for (String x : fList) {
			out.println("<img src='../upload/" + x + "' />");
		}
	}
	%>


</body>
</html>