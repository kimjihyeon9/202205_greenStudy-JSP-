<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/joinForm.css">
</head>
<body>
<h1>joinReq</h1>
<%
	request.setCharacterEncoding("UTF-8");
	String[] hjobbys = request.getParameterValues("hobby");
	for(String tt : "pid,name,pw,tel0,hobby,gender,content".split(",")){
	%>
<div class = "big">
	<div><%=tt %></div>
	<div><%=request.getParameter(tt) %></div>
</div>
<%	
	}
%>
<div class="big">
	<div>취미를</div>
	<div><%=Arrays.toString(hjobbys) %></div>
</div>
</body>
</html>