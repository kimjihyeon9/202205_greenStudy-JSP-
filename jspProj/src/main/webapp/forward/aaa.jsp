<%@page import="jdbc_p.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward/aaa</title>
</head>
<body>
<h1>forward/aaa 입니다</h1>
</body>
</html>
<%
	int marriage =0;
	if(request.getParameter("marriage")!=null){
		marriage = Integer.parseInt(request.getParameter("marriage"));
	}
	request.setAttribute("mat",91);
/* 	DAO dao = new DAO();
	request.setAttribute("members", dao.list(1)); */
%>
<jsp:forward page="forward2.jsp?kor=88">
	<jsp:param value="77" name="eng"/>

</jsp:forward>