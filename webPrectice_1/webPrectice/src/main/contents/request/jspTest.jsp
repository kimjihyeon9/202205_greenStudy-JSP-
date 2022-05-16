<%@page import="DAO.Member_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String pid =request.getParameter("pid");
	int no = 0;
	if(request.getParameter("no")!=null){
		no = Integer.parseInt(request.getParameter("no"));
	}
	String marriage = request.getParameter("marriage");
	
	Member_DTO dto = new Member_DTO();
	dto.setPid(request.getParameter("pid"));
	dto.setNo(request.getParameter("no"));
	System.out.println(dto);
	
	dto.init(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>threepleA</h1>
pid:<%=dto.getPid() %><br>
no:<%=dto.getNo() %><br>
marriage:<%=dto.isMarriage() %><br>
<br>
</body>
</html>