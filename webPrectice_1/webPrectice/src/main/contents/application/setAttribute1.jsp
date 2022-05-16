<%@page import="DAO.Member_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>SetAttribute</h1>
<%
	application.setAttribute("pid", "aaa");
	application.setAttribute("age", 35);
	application.setAttribute("arr", new int[]{10,11,12,13,14});
	application.setAttribute("member", new Member_DTO("GwangMin",4,true));
%>

</body>
</html>