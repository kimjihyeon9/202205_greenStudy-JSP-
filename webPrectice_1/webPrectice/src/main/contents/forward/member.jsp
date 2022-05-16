<%@page import="DAO.DAO"%>
<%@page import="DAO.Member_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("members", new DAO().list(1));
	request.setAttribute("main", "member");
%>
<jsp:forward page="view/template.jsp"></jsp:forward>