<%@page import="DTO.StudentsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    
    ArrayList<StudentsDTO> studs = new ArrayList<>();
    String[] names = request.getParameterValues("pname");
    String[] krs = 	 request.getParameterValues("kr");
    String[] ens =	 request.getParameterValues("en");
    String[] mas = 	 request.getParameterValues("ma");
    for(int i= 0;i<names.length;i++){
    	studs.add(new StudentsDTO(names[i],krs[i],ens[i],mas[i]));
    }
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/examForm.css">
</head>
<body>
<h1>examReg</h1>
<%for(StudentsDTO student : studs){
	%>
	<%=student.getDiv() %>
	<%} %>

</body>
</html>