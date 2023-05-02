<%@page import="dao.BoardMysqlDAO"%>
<%@page import="vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%




// 1. parameter 값 가져오기 : bno
// 2. null 아니면

// 3. 숫자로 형변환
// 4. dao객체
// 5. dao.deleteOne(bno)
// 6. list.jsp redirect
	// 1. 전달받은 파라미터의 값 가져오기
	String b = request.getParameter("bno");
	// 2. bno null 이 아니면
	if(b != null){
	// 3. 숫자로 형변환
		int bno = Integer.parseInt(b);
	// 4. dao 객체
	BoardMysqlDAO dao = new BoardMysqlDAO();
	// 5. dao를 통해서 지지정한 게시물 가져오기 (vo) : dao.deleteOne(bno)
	dao.deleteOne(bno);
	
	
	
	// 6. list.jsp redirect
	response.sendRedirect("list.jsp");
	}

%>