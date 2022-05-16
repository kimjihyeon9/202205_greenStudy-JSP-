<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/examForm.css">

</head>
<body>
<h1>examForm</h1>
<%
int no = 5;
if(request.getParameter("no")!=null){
	no = Integer.parseInt(request.getParameter("no"));
}%>
<form name="frm" action="">
<select name="no" id="" onchange="frmGo()">
<%for(int i=5;i<30; i+=5){ 
	String ss = "";
	if(i==no){
		ss="selected";
	}
	%>
		<option value="<%=i%>"<%=ss %>><%=i %></option>
		<%} %>
	</select>
</form>

<form action="examReg.jsp" method="post">
	<div><div>이름</div>
		<div>국어</div>
		<div>영어</div>
		<div>수학</div>
	</div>
	
	<%for(int i=0; i<no; i++) {%>
	<div>
		<div><input type="text" name="pname" value="김덕배<%=i %>" /></div>
		<div><input type="text" name="kr" value="<%=(int)(Math.random()*50+50) %>"/></div>
		<div><input type="text" name="en" value="<%=(int)(Math.random()*50+50) %>"/></div>
		<div><input type="text" name="ma" value="<%=(int)(Math.random()*50+50) %>"/></div>
	</div>
	<%} %>
	<div>
	<div><input type="submit" value="입력" /></div>
</div>
</form>

<script>
	function frmGo() {
		frm.submit();
	}
</script>
</body>
</html>