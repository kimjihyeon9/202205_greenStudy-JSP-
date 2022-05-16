<%@page import="jdbc_p.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>회원 목록이다!!!!</h3>
<%
	ArrayList<MemberDTO>list = (ArrayList<MemberDTO>) request.getAttribute("members");
	for(MemberDTO member:list){
		out.print(member+"<br>");
	}
%>