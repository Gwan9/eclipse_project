<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img {
width : 150px; height : 150px;
}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
	$(function(){
		$("img").on("click", function(){
			// 클릭하면 after.png 로 변경
			//$("img").attr("src","../images/after.PNG")
			//console.log(("img").attr("src"));
			
			$.ajax({
				type:"GET", // GET, POST 선택
				async : true, // 동기화 true, 비동기화 false
				url : "getJSON.jsp", // 찾아갈 url
				dataType : "html", // 전송받을 데이터 html, xml
				data : {"id":"aaa"},  //getJSON.jsp?txt=aaa
				success : function(response, status, request){
					console.log("성공시 메세지 출력");
					console.log(response);
					$("img").attr("src",response);
					
				},
				error: function(response, status, request){
					$("img").attr("src", "https://juststickers.in/wp-content/uploads/2016/12/404-error-not-found.png");
				},
				complete: function(){
					console.log("AJAX 통신 끝");
					$("img").fadeIn(2000);
					
				},
				beforeSend: function(){
					console.log("요청 보내기 전에 호출됨");
					$("img").fadeOut(2000);
				}
			});
		})
	})
</script>
</head>
<body>

<img src="../images/before.PNG" alt="뽀로로" id="img" />
</body>
</html>