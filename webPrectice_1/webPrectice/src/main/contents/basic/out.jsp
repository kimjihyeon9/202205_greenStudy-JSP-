<%@page import="OutTest.OutGoGo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="8kb" autoFlush="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>이건 아웃이야</h1>
<%=out.getBufferSize() %>, <%=out.getRemaining() %>
<br>

<%
	out.println("프로토스<br>");
	out.println("저그<br>");
	out.println("테란<br>");
%>
<%=out.getBufferSize() %>, <%=out.getRemaining() %><br>
<%="엔타로아둔<br>집행관?<br>" %>
알라라크<br>보라준<br>아르타니스<br>
<%=out.getBufferSize() %>, <%=out.getRemaining() %><br>
<%
	JspWriter jw = out;
	JspWriter jw2 = pageContext.getOut();
	OutGoGo ogg = new OutGoGo(out);
%>
<%=jw.getBufferSize() %>, <%=jw.getRemaining() %><br>
<%=jw2.getBufferSize() %>, <%=jw2.getRemaining() %><br>
<% ogg.print(); %>
<% out.flush(); %>
<%=jw2.getBufferSize() %>, <%=jw2.getRemaining() %><br>
</body>
</html>