<%@page import="java.util.ArrayList"%>
<%@page import="vo.MemberVO"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerOk.jsp</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	//MemberVO vo = new MemberVO(0,id, pwd, name, gender ,null);
	MemberVO vo = new MemberVO();
	
	vo.setId(id);
	vo.setName(name);
	vo.setPw(pwd);
	vo.setGender(gender);
	
	
	MemberDAO dao = new MemberDAO();
	
	
	
	dao.addOne(vo);
	
	dao.closed();
	//response.sendRedirect("login.jsp");

	%>
	
	<h2>짝짝짝 회원을 축하합니다.</h2>
	<h2>3초 후 자동으로 login.jsp로 이동합니다.(js)</h2>

	
<script>
	/* function login(){
		setTimeout(function(){
			location.href = "login.jsp";
		},3000);
	} */
	window.setTimeout(function(){
		location.href = "login.jsp";
	},3000);
	</script>
</body>
</html>