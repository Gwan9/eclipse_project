<%@page import="vo.ProductVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

String txt =request.getParameter("txt");
	if(txt != null){
	
		ProductDAO dao = new ProductDAO();
		ProductVO vo = dao.findByName(txt);
	if(vo != null){
	out.println(vo.getImgfile());
}

}


// search.jsp?txt=김말이
// 화면에 김말이 이미지 경로를 출력
// https://img.cjthemarket.com/images/file/product/293/20220511134904509.jpg
%>
