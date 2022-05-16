<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>sub1.jsp 입니다</h2>
<%
	int b = 2345;
%>
bug1 : <%=request.getParameter("pid") %>
<br />
bug2 : <%=request.getParameter("marriage") %>
<br />
<%=a %>, <%=b %>