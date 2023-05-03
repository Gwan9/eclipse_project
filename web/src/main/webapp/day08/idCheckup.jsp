<%@page import="vo.MemberVO"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 1. 파라미터값 가져오기 : idCheckup.jsp?id=aaa

String id = request.getParameter("id");

// 2. id가 null이 아니면

	if(id != null){
	
// 3. MemberDAO


	MemberDAO dao = new MemberDAO();
// 4. dao.getOne(aaa)
	MemberVO vo = dao.getOne(id);

// 5. vo 널이면 존재하지 않는다 : 화면에 false 출력
	if(vo == null){
		out.println("true");
	}
	else if(vo != null){
	out.println("false");
	}	
	}
	%>