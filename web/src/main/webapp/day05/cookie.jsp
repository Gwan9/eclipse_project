<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie.jsp</title>
<script type="text/javascript">
	// 자바스크립트로 쿠키 만들기
	window.onload = function(){
		document.cookie = "name=coffee"; // 쿠키의 이름 = 값
		var date = new Date();
		date.setTime(date.getTime()+ 1*60*1000); // 60초
		document.cookie = "product=moniter;expries=Wed", +date.toUTCString();
		
		var x = document.cookie;
		console.log(x);
		
}
</script>
</head>
<body>
	
</body>
</html>