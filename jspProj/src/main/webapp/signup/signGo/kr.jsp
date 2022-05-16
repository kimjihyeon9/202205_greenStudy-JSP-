<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String name = request.getParameter("name");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>이름</td>
		<td><input type="text" value="<%=name%>"/></td>
	</tr>
	<tr>
		<td>전화</td>
		<td><input type="text" /></td>
	</tr>
	<tr>
		<td>회사</td>
		<td><input type="text" /></td>
	</tr>
</table>

</body>
</html>