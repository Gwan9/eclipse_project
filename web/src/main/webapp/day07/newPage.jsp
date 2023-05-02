<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn").on("click", function(){
		console.log($("#txt").val());
		opener.document.getElementById("txt2").value=$("#txt").val();
		window.close();
		
	})
})
</script>
</head>
<body>
<h2>newPage.jsp입니다.</h2>
<input type="text" name="txt" id="txt" />
<input type="button" name="버튼" id="btn" />
</body>
</html>