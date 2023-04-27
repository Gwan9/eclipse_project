
<%@page import="vo.ProductVO"%>
<%@page import="java.util.Set"%>
<%@page import="dao.ProductDAO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewCart.jsp</title>
<style>
img{
width : 100px;
height : 100px;
}
table, td, td, th{
border : 1px solid gray;
border-collapse : collapse;
text-align : center;
}
</style>
</head>
<body>
	<table>
	<tr>
	<th>상품번호</th>
	<th>상품명</th>
	<th>이미지</th>
	<th>수량</th>
	<th>가격</th>
	<th>할인가격</th>
	</tr>
	<%
	// session 에서 cart 속성 가져오기
	Object obj = session.getAttribute("cart");
	if ( obj == null ){
		// ArrayList 생성
		ArrayList<Integer> cart = new ArrayList<Integer>();
		
		// 세션에 속성으로 지정
		session.setAttribute("cart", cart);
		
		// 세션에서 속성 가져오기
		obj = session.getAttribute("cart");
	
	}
	ArrayList<Integer> cart = (ArrayList<Integer>)obj;
	
	HashMap<Integer,Integer> map = new HashMap<Integer, Integer>();
	
	for(Integer it : cart) {
		// n 번 상품이 존재하면
		if(map.containsKey(it)){ // it라는 이름의 키가 존재한다면
		
		// 현재 상품의 갯수 구하기
		//int cnt = map.get(it);
		// 상품갯수에 1추가하기
		//cnt++;
		// 그리고 다시 맵에 넣기
		//map.put(it, cnt);
		
		// 한줄로
		map.put(it, map.get(it)+1);
		}else {
			map.put(it,1);
		}
		System.out.println("map : " + map );
	}
	
	
	
	// 1개씩 꺼내서 상품과 수령을 집계
	
	// 화면에 표형태로 출력
	// 맵에서 상품의 번호만 가져오기
	
	Set key = map.keySet(); // 상품번호만 set 타입으로 리턴
	// ex) 110, 121 물건의 가격, 이미지, 할인율

	ProductDAO dao = new ProductDAO();
	
	ArrayList<ProductVO> item = dao.getData(key);
		
		int hap = 0;
		int total = 0;
		
	for(ProductVO vo : item){
		/* out.println("<h2>"+vo.getPno() + " : "  + vo.getPname()+ "</h2>"); */
		// 장바구니에 넣은 상품의 수량
		int cnt = map.get(vo.getPno());
		
		total += (int)(Math.round(vo.getPrice() * (1 - vo.getDcratio() * 0.01)) * cnt);
		hap += (int)(Math.round(vo.getPrice()));
		// 표 형태로
	// 상품번호 상품명 이미지 수량 가격 할인가격
	// 110   티셔츠 ~작게~  2  5000 9000
	// 121   신발  ~~~    1  4000  3600

	
	%>
	<tr>
	<td><%= vo.getPno() %></td>
	<td><%= vo.getPname() %></td>
	<td><img src="<%= vo.getImgfile() %>" alt="" /></td>
	<td><%= cnt %></td>
	<td style="text-decoration: line-through;"><%= vo.getPrice() %>원</td>
	<td><%= Math.round(vo.getPrice() * (1 - vo.getDcratio() * 0.01)) %>원</td>
	</tr>
	
	
	
	
	
	<%} %>
	
	<tr>
	
	<td colspan ="4">합계</td>
	
	<td style="text-decoration: line-through;"><%=hap %>원</td>
	<td ><%=total %>원</td>
	</tr>
	</table>
	>
</body>
</html>