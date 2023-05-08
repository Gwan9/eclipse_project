<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery03.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
	// server03.xml 파일에서 도서목록을 가져오기
	$(function(){
		$("input").on("click", function(){
			//console.log("버튼 눌림");
			$.ajax({
				url : "server03.xml",
				dataType:'xml',
				success: function(data){
					console.log($(data).find("book"));//find() : ("book")을 찾아줘
					$(data).find("book").each(function(){
						// 각각의 요소마다 타이틀 엘리먼트 객체에 접근
						var title = $(this).find("title").text();
						console.log(title);
						var price = $(this).find("price").text();
						console.log(price);
						var txt = "<li>"+tutle + " : " + price + "</li>";
						$("ul").append(txt);
					}); // each(function(){}) : 찾은 요소마다 각각 (function(){})실행해
				}
			})
		})
	})
</script>
</head>
<body>
	<h3>도서관</h3>
	<input type="button" value="도서목록" />
	<div>
		<ul>
			<li>
				<h2>신간목록</h2>
			</li>
		</ul>
	</div>
</body>
</html>