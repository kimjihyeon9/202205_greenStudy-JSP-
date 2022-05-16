<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@page import="DAO.Member_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int [] zxc = (int[])application.getAttribute("arr");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Attribute</title>
</head>
<body>
<h1>get</h1>
<% Enumeration em = application.getAttributeNames();
	while(em.hasMoreElements()){
		out.println(em.nextElement()+"<br>");
	}
%>
<br />
------------------------------------------------------
<br />
pid:<%=application.getAttribute("pid") %> <br />
age:<%=application.getAttribute("age") %> <br />
arr:<%=Arrays.toString(zxc) %> <br />
member:<%=application.getAttribute("member") %> <br />

</body>
</html>