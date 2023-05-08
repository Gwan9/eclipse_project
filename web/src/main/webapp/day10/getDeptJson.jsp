<%@page import="org.json.simple.JSONObject"%>
<%@page import="vo.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DeptDAO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// getDeptJson.jsp
	JSONArray deptArray = new JSONArray();
	
// dao
	DeptDAO dao = new DeptDAO();

// db로 부터 모든 데이터 가져오기
	ArrayList<DeptVO> list = dao.selectAll();
	for(DeptVO vo : list){
		// 부서 정보 하낙 ㅏ들어간 JSONObject 선언
		JSONObject dept= new JSONObject();
		// map , key/value
		
		dept.put("deptno", vo.getDeptno());
		dept.put("dname", vo.getDname());
		dept.put("loc", vo.getLoc());
		// JSON 배열 객체에 JSON 객체 담는다.
		deptArray.add(dept);
		
	}out.println(deptArray.toJSONString());
%> 