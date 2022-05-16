<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name= request.getParameter("name");
	int year   = Integer.parseInt(request.getParameter("year"));
	String from= request.getParameter("from");
	if(year>2002){
		from = "teens";
	}
	switch(from){
	case "kr":
		break;
	case "another":
		break;
	case "teens":
		break;
	}
	response.sendRedirect("signGo/"+from+".jsp?name="+name);
	

%>