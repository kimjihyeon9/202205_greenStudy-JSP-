<%@page import="DTO.StudentsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/easyGo.css">
</head>
<body>
<h1>5명의 학생성적을 입력해주세요</h1>

<%
ArrayList<StudentsDTO> students = new ArrayList<>();

int no = 5;
if(request.getParameter("no")!=null){
	no = Integer.parseInt(request.getParameter("no"));
}%>

<%

for(int i=0; i<5;i++){%>
		<div>이름 <input type="text" name="name<%=i %>" /></div>
		<div>국어 <input type="text" name="kr<%=i %>" /></div>
		<div>영어 <input type="text" name="en<%=i %>" /></div>
		<div>수학 <input type="text" name="ma<%=i %>" /></div>
		<br />
<%	
}
%>
<div>
	<input type="submit"  value="계산하기" />
	<a href="../anotherEasyGo.jsp"></a>
</div>
</form>
</body>
</html>