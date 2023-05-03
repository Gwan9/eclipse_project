<%@page import="dao.EmpDAO"%>
<%@page import="vo.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String empno = request.getParameter("empno");
if(empno != null){
int eno = Integer.parseInt(empno);
EmpDAO dao = new EmpDAO();
EmpVO vo = dao.getOne(eno);

out.println(vo.getEname());

}
%>