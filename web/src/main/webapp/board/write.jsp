
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script src="../lang/summernote-ko-KR.js"></script>
</head>
<body>
	<%
	Object obj = session.getAttribute("vo");
	String name = null;
	if (obj != null) {
		MemberVO vo = (MemberVO) obj;
		name = vo.getName();
	}
	%>
	<div id="container">
		<form action="writeOk.jsp" method="get">


			<table class="table table-striped">
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer" id="" value="<%=name%>" disabled="disabled" />
					<input type="hidden" name="writer" value="<%=name %>" /></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" id="" /></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="contents" id="" cols="30" rows="10" class="summernote"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input class="btn btn-success" type="button"
						value="목록" /> <input class="btn btn-primary" type="submit"
						value="작성" /> <input class="btn btn-danger" type="reset"
						value="다시쓰기" /></td>

				</tr>

			</table>
		</form>
	</div>
	<script>
	
			$('.summernote').summernote({
				height : 150,
				lang : 'ko-KR'
		});
	</script>
</body>
</html>