<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
   <script type="text/javascript" src="../js/httpRequest.js"></script>

<script type="text/javascript">
   window.onload = function() {
      var btn = document.getElementById("btn1");
      btn.onclick = function() {
         console.log("하하하");
         var frm = document.frm;
         //입력값 유효성 검사

         frm.action = "loginOk.jsp";
         frm.method = "get";
         frm.submit(); //폼으로 가져가
      }
   }

   //---------------------------------------------------------------------------
   
   
   
</script>
</head>
<body>

   <%
   Object obj = session.getAttribute("vo");

   if (obj != null) { //로그인이 되어있는 상태
      MemberVO vo = (MemberVO) obj;
      out.println("<h3><a href='logout.jsp'>" + vo.getName() + "</a>님  환영합니다. </h3>");
      //이름에 로그아웃 하이퍼링크를 적용 >> 클릭하면 logout.jsp로 이동
   %>
   <ol>
   <li><a href="../board/list.jsp"> 게시판</a></li>
   </ol>
   
   <%
   
   }

   else { //로그인이 안되어있을 때 보이는 창
   %>

   <form action="loginOk.jsp" name="frm" method="post">

      <table>
         <tr>
            
            <th>ID</th>
            <td><input type="text" name="id" id="id" /> 
            </td>
            
         </tr>
         <tr>
            <th>PW</th>
            <td><input type="password" name="pwd" id="" /></td>
         </tr>
         <tr>
            <td colspan="2"><input type="button" value="로그인" id="btn1" />
               <!-- 유효검사를 하기 위해 버튼으로 바꿔줌 --> <a href="register.jsp"> <input
                  type="button" value="회원가입" id="btn2" />
            </a></td>
         </tr>
      </table>
   </form>

   <%
   }
   %>

</body>
</html>