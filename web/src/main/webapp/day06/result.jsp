
<%@page import="dao.FileDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result.jsp</title>
</head>
<body>
	<h2>result.jsp</h2>
	
	<%
	//upload 디렉토리 실제 경로 얻어오기
	String saveDir = request.getRealPath("/upload");
	out.println(saveDir);
	
	// 첨부파일의 최대 크기 : 30MB까지 업로드 가능 지정
	int maxFileSize = 1024*1024*30; // byte*kbyte*mbyte;
	// 1kb ==> 1024Byte
	MultipartRequest mr = new MultipartRequest(request, saveDir, maxFileSize, "UTF-8", new DefaultFileRenamePolicy());
	
	// 파라미터값 가져오기
	String title = mr.getParameter("title");
	String writer = mr.getParameter("writer");
	String contents = mr.getParameter("contents");
	
	// 파일의 원래 이름
	String f = mr.getOriginalFileName("filename");
	
	FileDAO dao = new FileDAO();
	dao.addOne(title, writer, contents, f);
	%>
	<h2>제목: <%= title %></h2>
	<h2>작성자: <%= writer %></h2>
	<h2>내용: <%= contents %></h2>
	<h2>파일명: <%= f %></h2>e
	
	<a href="view.jsp">이미지 보러가기</a>
</body>
</html>