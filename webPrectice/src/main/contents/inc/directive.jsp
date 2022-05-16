<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive</title>
</head>
<body>
<h1>Include Directive</h1>
<%-- <%@ include file="sub1.jsp" %> 요거   안댐--%>
<%-- <%@ include file="<%=sub %>" %> 요거도 안댐--%>
<%
	final String sub = "sub1.jsp";
	int a= 10;
%>

bug1 : <%=request.getParameter("pid") %>
<br />
bug2 : <%=request.getParameter("marriage") %>
<br />

<%=a %>
<%@ include file="sub1.jsp" %>
<br />
<%=b %>
<br /><hr />
<%@ include file="sub2.jsp" %>


</body>
</html>