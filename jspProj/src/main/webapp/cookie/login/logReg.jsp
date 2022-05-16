<%@page import="jdbc_p.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인처리</h1>
<%
	String msg="로그인실패";
	String id[] ={"aa", "bb", "cc", "dd", "ee"};
	String password[] ={"1111", "2222", "3333", "4444", "5555"};
	String user[] = {"유저1", "유저2", "유저3", "유저4", "유저5"};
	
	for(int i=0;i<id.length;i++){
		if(id[i].equals(request.getParameter("pid")) && 
				password[i].equals(request.getParameter("pw"))){
			msg="로그인성공";
			application.setAttribute(user[i], new UserDTO(id[i],user[i]));
			application.removeAttribute("liveUser");
			application.setAttribute("liveUser", user[i]);
			break;
		}
	}
	
%>

<script >
	alert("<%=msg %>");
	
	location.href = "mian.jsp";
</script>

</body>
</html>