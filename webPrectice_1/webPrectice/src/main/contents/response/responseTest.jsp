<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>hello respone</h1>
난 내용 내용
내용의내용
<script>
	alert("나는 경고창\nㅎㅇ");
</script>
</body>
</html>
<%
	response.sendRedirect("test2.jsp?pid=asdf&age=23");
%>