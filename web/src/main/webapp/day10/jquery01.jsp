<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery01.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
	// 1. 버튼을 글릭하면 server01.jsp의 내용을 비동기화 통신을 통해서 가져온 후 결과를 콘솔에 출력
	$(function() {

		$("input").on("click", function() {
			//$("ul").append("<li>hahaha</li>");
			//console.log("버튼 클릭");

			$.ajax({
				url : "server01.jsp",
				success : function(data) {
					//console.log(data.trim); // 공백제거
					var data2 = data.trim();
					var dList = data2.split(",");
					console.dir(dList);
					for (var i = 0; i < dList.length; i++) {
						var m = dList[i];
						var txt = "<li>" + m + "</li>";
						//console.log(txt);
						$("ul").append(txt);
						
					}
				}

			})
		})
	})
	// 2. 부서 목록에 추가
</script>
</head>
<body>
	<h2>부서목록</h2>
	<input type="button" value="출력" />
	<div>
		<ul>
			<li>
				<h2>부서</h2>
			</li>
			<li>SALES</li>
			<li>OPERATION</li>
		</ul>
	</div>
</body>
</html>