<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String choice = "outline";
	if(request.getParameter("self")!=null){
		choice = request.getParameter("self");
	}
	
	
	String choiceUrl = "self/"+choice+".jsp";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/inhome.css"/>
</head>
<body>
<header>
<jsp:include page="startop.jsp"></jsp:include>
</header>
<section>
<jsp:include page="<%=choiceUrl %>"></jsp:include>
</section>
</body>
</html>