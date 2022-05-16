<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int c = 300;
%>
<%
	int d = 400;
%>
<h2>bbb.jsp 입니다.</h2>
<%=c %>, <%=d %>
<br />
이름2 : <%=request.getParameter("pid") %>
<br />
marriage : <%=request.getParameter("marriage") %>
<br />
이름 : <%=request.getParameter("pname") %>
<br />
나이 : <%=request.getParameter("age") %>
<br />
국어 : <%=request.getParameter("kor") %>
<br />
영어 : <%=request.getParameter("eng") %>
<br />
수학 : <%=request.getParameter("mat") %>
<br />
맴버1
<br />
<%=request.getAttribute("mem1") %>
<br />
맴버2
<br />
<%=request.getAttribute("mem2") %>