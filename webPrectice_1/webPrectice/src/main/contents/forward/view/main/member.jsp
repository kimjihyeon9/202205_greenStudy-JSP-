<%@page import="java.util.ArrayList"%>
<%@page import="DAO.Member_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>회원목록입니다.</h3>
<%
	ArrayList<Member_DTO>list = (ArrayList<Member_DTO>) request.getAttribute("members");
	for(Member_DTO member:list){
		out.print(member+"<br>");
	}
%>