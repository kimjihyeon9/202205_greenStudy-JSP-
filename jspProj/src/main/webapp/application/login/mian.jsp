<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지입니당</title>
</head>
<body>
<h1>! 로그인페이지 !</h1>
<%
MemberDTO dto= null;
	String user = (String)application.getAttribute("liveUser");
	if(user!=null){
		dto = (MemberDTO)application.getAttribute(user);
		%><%=dto.getPname() %>님 환영합니다 <br /><a href="logout.jsp">로그아웃</a> <%
	} else {%>
<form action="logReg.jsp">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="pid" /></td>
		</tr>
		<tr>
			<td>비번</td>
			<td><input type="password" name="pw"/></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="로그인" /></td>
		</tr>
	</table>
</form>
<br />
로그인이안되시나요? <a href="signup.jsp">여기</a>를 눌러주세요.
	<%}%>


</body>
</html>