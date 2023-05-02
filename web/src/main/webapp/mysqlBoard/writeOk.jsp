
<%@page import="dao.BoardMysqlDAO"%>
<%@page import="vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// writeOk.jsp
	
	
	// 1. 파라미터 값 가져오기
	
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String contents = request.getParameter("contents");
	// 2. 이 널이면 list.jsp 리다이렉트
	out.println("writer : " + writer);
	String writer1 = request.getParameter("writer1");
	out.println("writer1 : " + writer1);
	// 아무것도 안 준 값 != null 
			
	
	if(title == null || writer == null || contents == null 
	|| writer.equals("") || title.equals("") || contents.equals("") ) {
		response.sendRedirect("list.jsp");
	}/* else if (writer.equals("") || title.equals("") || contents.equals("")){
		response.sendRedirect("list.jsp");
	} */else if (title != null & writer != null & contents != null){
	// 3. 널이 아니면 dao 객체 생성
		
		BoardMysqlDAO dao = new BoardMysqlDAO();
		BoardVO vo = new BoardVO();
		
		vo.setTitle(title);
		vo.setWriter(writer);
		vo.setContents(contents);
		vo.setIp(request.getRemoteAddr());
		
	// 4. dao.addOne(vo); // db 에 저장
		dao.addOne(vo);
	// 5. list.jsp 리다이렉트
		response.sendRedirect("list.jsp");
		
		
	}
	



%>