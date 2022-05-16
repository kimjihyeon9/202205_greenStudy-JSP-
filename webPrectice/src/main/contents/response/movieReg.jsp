<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");

	int cnt      = Integer.parseInt(request.getParameter("cnt"));
	
	switch(title){
	case "starcraft":
		cnt++;
		break;
	case "warcraft":
		cnt*=2;
		break;
	case "diablo":
		cnt--;
		break;
	}
	
	response.sendRedirect("movie/"+title+".jsp?cnt="+cnt);

%>