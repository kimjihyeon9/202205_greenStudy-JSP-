<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% // 디렉티브 구간 %>
<style>
div{
	width:50px;
	height:50px;
	background:#ff0;
	border:1px solid #000;
}
</style>
<%! 
// declaration -- 클래스 정의부
	int a = 10;
	String b = "Sharke";
	Date now = new Date();
	
	public void meth_1(){
		System.out.println("meth_1() 실행");
	}
	
	public void meth_2(){
		System.out.println("meth_2() 실행");
	}
%>
<%
	// scriptlet : _jspService() 메소드 정의 ::>main과 같다
	out.println("스크립트 1");
	out.println("스크립트 2");
	out.println("스크립트 3");
	for(int i =0;i<10;i++){
		out.println("<div>"+i+"</div>");
	%>
	<div><%=i %></div>
	
<%}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>LifeCycle</h2>

</body>
</html>