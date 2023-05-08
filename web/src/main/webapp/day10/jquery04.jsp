<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
	// dept.xml 파일에서 부서명과 부서위치를 리스트로 출력
	// 10 : ACCOUNTING : NEW YORK
	
	$(function(){
		$("input").on("click", function(){
			$.ajax({
				url : "dept.xml",
				success : function(data){
					$(data).find("dept").each(function(){
						var deptno = $(this).find("deptno").text();
						var dname = $(this).find("dname").text();
						var loc = $(this).find("loc").text();
						
						var txt = "<li>" + deptno +" : " + dname + " : " + loc + "</li>";
						$("ul").append(txt);
					})
				}
			})
		})
	})
</script>
</head>
<body>
	<h3>부서리스트</h3>
	<input type="button" value="부서가져오기"/>
	<div>
		<ul>
			<li>
				<h2>부서리스트</h2>
			</li>
		</ul>
	</div>
</body>
</html>