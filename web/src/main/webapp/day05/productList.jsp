<%@page import="vo.ProductVO"%>
<%@page import="dao.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productList.jsp</title>
<style>
* {
	margin: 0;
	padding: 0;
}

#container {
	width: 1000px;
	margin: auto;
}

img {
	width: 200px;
	height: 200px;
}

p {
	text-align: center;
}
.wrap{
	width : 200px;
	border : 1px solid red;
	float : left;
	padding : 20px;
	margin : 2px;
}

.del {
	text-decoration: line-through;
}
</style>
</head>
<body>
	<div id="container">

		<%
		ProductDAO dao = new ProductDAO();

		ArrayList<ProductVO> list = dao.SelectAll();

		for (ProductVO vo : list) {
			// 상품 이름의 길이가 너무 길면(8자까지만)
			// 상품명... <--
			
			//System.out.println((vo.getPname().length() >= 12 )?vo.getPname().substring(0,12)+"...":vo.getPname());
			vo.setPname((vo.getPname().length() >= 12 )?vo.getPname().substring(0,12)+"...":vo.getPname());
 		%>
		<div class="wrap">
			<a href="productDetail.jsp?pno=<%=vo.getPno()%>"><img src="<%=vo.getImgfile()%>" alt="" /></a>
			<p><%=vo.getPname()%></p>
			<p class="del"><%=vo.getPrice()%></p>
			<p>대박할인</p>
			<p><%=vo.getDcratio()%></p>
			<p><%=Math.round(vo.getPrice() * (1 - vo.getDcratio() * 0.01))%></p>
			<p>
			<input type="button" value="즉시구매"/>
			<input type="button" value="장바구니"/>
			</p>
			
		</div>

		<%
		}
		%>

	</div>
</body>
</html>