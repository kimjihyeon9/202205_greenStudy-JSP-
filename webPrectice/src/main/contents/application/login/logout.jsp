<%@page import="DTO.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String user = (String)application.getAttribute("liveUser");
	application.removeAttribute("liveUser");
	UserDTO dto = (UserDTO)application.getAttribute(user);
	String msg = dto.getPname()+"님 로그아웃되었습니다.";
	
%>
<script>
	alert("<%=msg%>");
	location.href = "mian.jsp";
</script>
</body>
</html>