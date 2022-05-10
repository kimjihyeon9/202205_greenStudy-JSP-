<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinReg</title>
<link rel="stylesheet" type="text/css" href="../css/joinForm.css">
</head>
<body>

<h1>joinReg</h1>
<%
	for(String tt : "pid,pname,pw,tel0,tel1,tel2,hobby,gender,content".split(",")){
%>

<div class="big">
	<div><%=tt %></div>
	<div><%=request.getParameter(tt) %></div>
</div>

<%} %>

</body>
</html>