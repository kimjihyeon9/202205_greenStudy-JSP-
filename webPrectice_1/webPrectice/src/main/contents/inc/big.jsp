<%@page import="DAO.Member_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("mem1", new Member_DTO("배광민",10,true) );
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include.jsp</title>
</head>
<body>
<h1>big</h1>
big.jsp입니다. 
<%=request.getParameter("pid") %>
<%=request.getAttribute("mem1") %>
<%=request.getAttribute("mem2") %>
<jsp:include page="small.jsp?pname=GwnagMin&age=23">
	<jsp:param value="88" name="kor"/>
	<jsp:param value="78" name="eng"/>
	<jsp:param value="68" name="mat"/>
</jsp:include>
<br />
<%
	request.setAttribute("mem2", new Member_DTO("이광민",23,false));

%>
<br /><br />
<jsp:include page="midle.jsp"></jsp:include>
<br /><br />
<h2>in the big</h2> 
<br />
<%=request.getAttribute("mem2") %>

</body>
</html>