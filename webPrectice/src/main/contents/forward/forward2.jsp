<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward/forward2</title>
</head>
<body>
<h1>forward/íŽėë2</h1>
pid:<%=request.getParameter("pid") %> <br />
age:<%=request.getParameter("age") %> <br />
kor:<%=request.getParameter("kor") %> <br />
mat:<%=request.getAttribute("mat") %> <br />
eng:<%=request.getParameter("eng") %> <br />
members = <%=request.getAttribute("members") %>
</body>
</html>