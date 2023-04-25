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
	MemberVO vo = dao.getOne(id, pwd);
	
	
	
	
	if(vo != null){
		out.println("<h1>" + vo.getName() + "님 환영합니다.</h1>");
		// session 내장객체 저장
		session.setAttribute("vo", vo);
		out.println("<a href='login.jsp'>로그인 페이지로 이동 </a>");
	}else{
		response.sendRedirect("login.jsp");
		out.println("<h1>로그인 실패</h1>");
	}
	%>
	
	
</body>
</html>