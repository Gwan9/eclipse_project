<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script>
$(function(){
	$("input").on("click", function(){
		$.ajax({
			url : "getMemberJson.jsp",
			success : function(data){
				var obj = JSON.parse(data);
				for(var i=0; i<obj.length; i++){
					var txt = "<li>" + obj[i].id+ " : " +obj[i].pw + " : " + obj[i].name + "</li>";
					$("ul").append(txt);
				}
			}
		})
	})
})
</script>

</head>
<body>
<h1>AJAX Member JSON</h1>
	<input type="button" value="회원정보 출력" />
	<ul>
	<li>목록</li>
	</ul>
</body>
</html>