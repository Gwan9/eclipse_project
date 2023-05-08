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
	// 1. 버튼 클릭하면 콘솔에 메세지 출력
	$(function() {
		$("input").on("click", function() {
			
			//console.log("ㅎㅇ");
	// 2. server02.jsp 에 사원이름 출력 SCOTT, BLACK, KING
			
	// 3. 버튼을 클릭하면 server02.jsp의 내용을 콘솔에 출력
			$.ajax({
				url : "server02.jsp",
				success : function(data){
					//console.log(data.trim());
					var data2 = data.trim();
					var dList = data2.split(",");
					console.dir(dList);
					
	// 4. 버튼을 클릭하면 server02.jsp의 내용을 배열로 만들어 콘솔에 출력
					for(var i =0; i<dList.length; i++){
						var m = dList[i];
	// 5. 배열에서 한개씩 꺼내 <li>SCOTT</li> 형태로 완성
						var txt = "<li>" + m + "</li>";
	// 6. ul 태그 뒤에 붙인다.
						$("ul").append(txt);
	// 7. server02.jsp의 내용을 사원테이블에서 사원의 이름을 출력하는 자바코드로 변경한다.
					}
				}
			})
			
		})

	})
</script>
</head>
<body>

	<h2>사원목록</h2>
	<input type="button" value="출력" />
	<div>
		<ul>
			<li></li>
		</ul>
	</div>
</body>
</html>