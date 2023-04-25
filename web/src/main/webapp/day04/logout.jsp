<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 이 부분은 사용자에게 무언가 보여 줄 내용이 없음
	session.invalidate(); // 세션을 무효화
	
	// 로그인 페이지로 redirect
	response.sendRedirect("login.jsp");
%>