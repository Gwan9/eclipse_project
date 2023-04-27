<%@page import="vo.ProductVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productDetail.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<style>
#container {
	width: 1000px;
	margin: auto;
}

#pic {
	width: : 500px;
	float: left;
}

table {
	border-top: 3px solid gray;
	border-bottom: 3px solid gray;
}

info {
	width: 500px;
	float: left;
}

div#pic>img {
	width: 100%;
	height: 50%;
}

#desc {
	/* float 효과 제거 */
	clear: both;
}

.icon {
	width: 50px;
	height: 50px;
}
</style>
<script>
	$(function() {
		$("img[src='../images/cart.png']").on("click", function() {
			//alert("ddddddd");
			$("#showImg").show();
			window.setTimeout(function(){
			document.frm.action = "cart.jsp";
			document.frm.method = "get";
			document.frm.submit();
			}, 2000);
		});
	})
</script>
</head>
<body>

	<!-- 상품의 상세정보 출력 -->

	<%
	String p = request.getParameter("pno");
	if (p != null) {
		int pno = Integer.parseInt(p);
		ProductDAO dao = new ProductDAO();
		ProductVO vo = dao.getOne(pno);
	//out.println("<h2> 상품명" + vo.getPname() + "</h2>");
	%>

	<div id="container">

		<form action="" name="frm">
			<input type="hidden" name="pno" id="pno" value="<%=vo.getPno()%>" />
		</form>
		<div id="pic">
			<img src="<%=vo.getBigfile()%>" alt="" />
		</div>

		<div id="info">
			<table>
				<tr>
					<td colspan="2"><%=vo.getPname()%></td>
				</tr>
				<tr>
					<td>판매가격</td>
					<td><%=vo.getPrice()%></td>
				</tr>
				<tr>
					<td>할인가격</td>
					<td><%=Math.round(vo.getPrice() * (1 - vo.getDcratio() * 0.01))%></td>
				</tr>
				<tr>
					<td colspan="2">
						<img class="icon" src="../images/payment.png" alt="" /> 
						<img class="icon" src="../images/cart.png" alt="" />
						<a href="viewCart.jsp">장바구니 보러가기</a>
					</td>
				</tr>
			</table>
		</div>
			<div id="desc">
				<p><%=vo.getProdesc()%></p>
			</div>
			<div id="showImg" style="display: none">
				<h1>장바구니에 넣었습니다.</h1>
				<a href="javascript:closeDiv()">닫기</a>
			</div>
		</div>
	
	<%}%>
	
</body>
</html>