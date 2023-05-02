<%@page import="dao.BoardMysqlDAO"%>
<%@page import="vo.BoardVO"%>
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

	System.out.println("modifyOk.jsp");
	// modifyOk.jsp
	
	
	// 1. 파라미터 값 가져오기\
	String b = request.getParameter("bno");
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	
	// 2. bno가 널이 아닐 때
	if(b != null){
		int bno = Integer.parseInt(b);
	// 3. dao 객체
		BoardMysqlDAO dao = new BoardMysqlDAO();
	// 4. vo 객체
		BoardVO vo = new BoardVO();
	
		
	// 5. setter로 값 지정
	
	vo.setTitle(title);
	vo.setContents(contents);
	vo.setBno(bno);
	
	// 6. dao.updateOne(vo)
	dao.updateOne(vo);
	
	// 7. list.jsp로 리다이렉트
	response.sendRedirect("list.jsp");
		
	}
	
	
	
	
	
	
	
	
%>
</body>
</html>