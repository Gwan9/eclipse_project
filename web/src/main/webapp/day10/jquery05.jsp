<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery05.h</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
	$(function(){
		$("input").on("click", function(){
			//console.log("출력확인");
			$.ajax({
				url : "getDeptJson.jsp",
				type : "GET",
				success : function(data){
					//console.log(data);
					var obj = JSON.parse(data);
					console.log(obj);
					for(var i =0; i<obj.length; i++){
						var ele = obj[i];
						var txt = "<li>"+obj[i].deptno+ " : " + obj[i].dname + " : " + obj[i].loc +"</li>";
						$("ul").append(txt);
					}
				}
			});
		})
	})
</script>

</head>
<body>
	<h1>AJAX JSON</h1>
	<input type="button" value="출력 " />
	<ul>
	<li>목록</li>
	</ul>
</body>
</html>