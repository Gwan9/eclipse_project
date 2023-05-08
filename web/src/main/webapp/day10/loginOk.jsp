<%@page import="dao.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOK.jsp</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	out.println("<h3> id : "+id +"</h3>");
	out.println("<h3> pw : "+pwd +"</h3>");
	
	MemberDAO dao = new MemberDAO();
	// 로그인 성공했다면
	MemberVO vo = dao.getOne(id, pwd);
	
	
	if(vo != null)
		session.setAttribute("vo", vo);
	/* else
		session.setAttribute("fail", 1); */
	
	
	response.sendRedirect("login.jsp");
	%>
	
	
</body>
</html>