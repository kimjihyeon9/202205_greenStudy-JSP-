<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    	Calendar today = Calendar.getInstance();
    
    	today.set(Calendar.DATE,1);
    	int first = today.get(Calendar.DAY_OF_WEEK);
    	int year  = today.get(Calendar.YEAR);
    	int month = today.get(Calendar.MONTH)+1;
    	int last  = today.getActualMaximum(Calendar.DATE);
    	int testy = year - 2020;
    	System.out.println(testy);
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/diary.css">

</head>
<body>
<h1> 다이어리 ! </h1>

<div>
	<div><img src="../imgFolder/a<%=testy %>.jpg" alt="" /></div>
	<div><%=year+"年"+month+"月" %></div>
	<div>
	
	<%for(char dd : "월화수목금토일".toCharArray()) {%>
		<div><%=dd %></div><%} 
		for(int i=1;i<first;i++){%>
			<div></div>
		<%
		}
		for(int i=1;i<=last;i++){%>
		<div><%=i %></div>
		<%} %>
	</div>
</div>

</body>
</html>