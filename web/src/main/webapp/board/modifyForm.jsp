<%@page import="vo.BoardVO"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script src="../lang/summernote-ko-KR.js"></script>
<style>
table{
width : 900px;
margin : auto;
border-bottom : 1px solid black;}
table, th, td {
border-top: 1px solid black;
border-collapse: collapse;
text-align : center;}

</style>
</head>
<body>
<div id="container">
	<h1>modifyForm.jsp</h1>
	<%
	// 1. 전달받은 파라미터의 값 가져오기
	String b = request.getParameter("bno");
	// 2. bno null 이 아니면
	if(b != null){
	// 3. 숫자로 형변환
		int bno = Integer.parseInt(b);
	// 4. dao 객체
	
	BoardDAO dao = new BoardDAO();
	// 5. dao를 통해서 지지정한 게시물 가져오기 (vo) : dao.selectOne(bno)
	BoardVO vo = dao.selectOne(bno);
		
	if(vo != null){
		
	
	
	
	// 6. 화면에 출력
	// 7. 자원반남 dao.close()
	%>
	<form action="modifyOk.jsp">
	<table>
		<tr>
			<th>작성자</th>
			<td><%= vo.getWriter() %></td>
			<th>조회수</th>
			<td><%= vo.getHits() %></td>
			<th>작성일시</th>
			<td><%= vo.getRegdate() %>
			<input type="hidden" name="bno" value="<%=vo.getBno() %>" />
			</td>
			
			<td></td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="5"><input type="text" name="title"  value="<%= vo.getTitle() %>" /></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="5"><textarea name="contents" id="" cols="30" rows="10" class="summernote">
			<%= vo.getContents() %></textarea></td>
		</tr>
		<tr>
			<td colspan="6">
				<a href="list.jsp"><input type="button" value="목록" /></a> 
				<input type="submit" value="수정" /></td>
			<td></td>

		</tr>

	</table>
	</form>
</div>
	<%
	} 
	dao.close();
	}
	%>
	<script>
	$(".summernote").summernote({
		height : 150,
		lang : 'ko-KR',
		// 에디터에 커서이동
		focus : true,
		// 툴바
		toolbar : [
			// 글꼴 설정
			['fontname', ['fontname']],
			// 글자 크기 설정
			['fontsize', ['fontsize']],
			// 굵기, 기울임꼴, 밑줄, 취소선, 서식지우기
			['style', ['bold','italic','underline','strikethrough','clear',]],
			// 글자색
			['color', ['forecolor', 'color']],
			// 표만들기
			['table', ['table']]
		],
		// 추가한 글꼴
		fontNames: ['Arial', 'Arial Black', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움체', '바탕체',],
		// 추가한 폰트 사이즈
		fontSizes: ['8','9','10','11','12','14','16','18','20','22']
	});
	</script>
</body>
</html>