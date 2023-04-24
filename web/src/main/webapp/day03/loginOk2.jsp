<%@page import="vo.MemberVO"%>
<%@page import="dao.MemberDAO"%>
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
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
	
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.getOne(id, pw);

	System.out.println("vo : " + vo);
	
	if(vo != null){ // 로그인 성공했으면
		out.println("<h3>"+vo.getName()+"님 환영합니다.</h3>");
	}else{
		response.sendRedirect("login.jsp");
		out.println("<h3>id pw 틀림</h3>");
	}
	
	
	%>
</body>
</html>