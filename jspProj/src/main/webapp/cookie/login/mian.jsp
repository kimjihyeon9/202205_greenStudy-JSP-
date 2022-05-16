<%@page import="jdbc_p.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지입니당</title>
</head>
<body>
<h1>! 로그인페이지 !</h1>
<%
   if(application.getAttribute("inUser")!=null){
	   UserDTO dto = (UserDTO)application.getAttribute(name);
%>      
   <%=dto.getPname() %>님 안녕하세요
   <a href="logout.jsp">로그아웃</a>
<% } else { %>
   
<form action="logReg.jsp">
   어른디<input type="text" name="pid" />
   아뭐<input type="text" name="pw" />
   <input type="submit" value="로그인" />
</form>
   <% } %>

</body>
</html>