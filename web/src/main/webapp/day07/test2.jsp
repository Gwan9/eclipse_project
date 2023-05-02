<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

function test(){
	console.log("test");
	var link = document.getElementById("link");
	console.dir(link);
	/* link.href='#'; */
	$("#link").removeAttr("href");
}
</script>
</head>
<body>
<a href="http://www.naver.com" id="link">네이버</a>
<input type="button" value="링크지우기" onclick="test();" />
</body>
</html>