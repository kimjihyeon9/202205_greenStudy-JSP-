<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String main = (String)request.getAttribute("main");
	String mainURL = "main/"+main+".jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<h1>여긴 최상단</h1>
<header>
	<jsp:include page="atop.jsp"/>
</header>
<h1>여긴 중단</h1>
<section>
	<h3><%=main %></h3>
	<jsp:include page="<%=mainURL %>"/>
</section>
<h1>여긴 하단</h1>
<footer>

</footer>

</body>
</html>