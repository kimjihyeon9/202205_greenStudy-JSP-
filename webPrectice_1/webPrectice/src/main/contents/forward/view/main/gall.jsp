<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int start = (int) request.getAttribute("start");
	int end =   (int) request.getAttribute("end");
	System.out.println(start+"여기진입"+end);
	
%>

<div class = "big">
<% for(int i=start;i<=end;i++){%>	
<img src="../imgFolder/a<%=i %>.jpg" alt="" />
<%} %>
</div>

<div>
<% for(int i=1;i<4;i++){%>	
	<a href="?pageNo=<%=i %>"><%=i %></a>
<%} %>
</div>