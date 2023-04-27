<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie2.jsp</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>
<script type="text/javascript">
	$(function(){
		// 쿠키 생성 : 세션이 종료될 때 까지 존재
		$.cookie("id", "hong"); //("name","value")
		// 7일 뒤에 만료되는 쿠키 생성
		$.cookie("keyword", "coffee", {expires:7});
		
		// 쿠키 읽기
		console.log("keyword : " + $.cookie("keyword"));
		
		// 모든 쿠키 읽기 : 객체 형태로 리턴	
		console.log($.cookie());
		
		// 쿠키 삭제 : true, false 리턴
		console.log("keyword 쿠키 삭제 : " + $.removeCookie("keyword"));
	})
</script>
</body>
</html>