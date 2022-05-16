<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		String main = "info";
		if(request.getParameter("main")!=null){
			main = request.getParameter("main");
		}
		
	
		String mainUrl = "main/"+main+".jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈입니다</title>
<link rel="stylesheet" href="../css/inhome.css"/>
</head>
<body>
<header>
<jsp:include page="top.jsp"></jsp:include>
</header>
<section>
<jsp:include page="<%=mainUrl %>"></jsp:include>
</section>

</body>
</html>