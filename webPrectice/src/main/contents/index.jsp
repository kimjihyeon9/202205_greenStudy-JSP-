<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pid = URLEncoder.encode("배광민", "UTF-8");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSP</h1>
<h1>basic</h1>
<a href="basic/first.html">이 버튼을 눌러봐!</a>
<br>
<a href="basic/index.jsp">아니면 이 버튼을 눌러봐아!!</a>
<br>
<a href="basic/lifeCycle.jsp">이거냐</a>
<br>
<a href="basic/out.jsp">아웃연습</a>
<br />
<a href="basic/Diary.jsp">다이어리</a>
<br>
<h2>request</h2><br>
<a href="request/jspTest.jsp?pid=<%=pid %>&no=1234&marriage=asdasd">RequestInJSP</a>
<a href="request/joinform.jsp">joinForm</a>
<hr>
<h1>국영수 평균제기</h1>
<a href="request/easyGo.jsp">국영수평균</a>
<hr>
<h1>국영수 ex</h1>
<a href="request/eamaForm.jsp">예시</a>
/<br />
<h1>리스폰</h1>
<a href="response/responseTest.jsp">리스폰 테스트</a>
<a href="response/test3.jsp">리스폰 테스트2</a>
<a href="response/movieForm.jsp">뮤비 폼</a>
<br />
<h1>회원가입</h1>
<a href="signup/signup.jsp">회원가입창</a>
<br />
application/info
<h1>responese</h1>
<a href="application/info.jsp">information</a>
<a href="application/setAttribute1.jsp">set1</a>
<a href="application/get.jsp">get</a>
<a href="application/set2.jsp">set2</a>
<a href="application/remove.jsp">remove</a>
<a href="application/login/mian.jsp">로그인 페이지</a>
<br>
<h2>인크루드</h2>
<a href="inc/small.jsp">small</a>
<a href="inc/big.jsp?pid=gelli&marriage=true">big</a>
<h2>홈</h2>
<a href="inc/home.jsp">홈</a>
<hr />
<a href="inc/starcraft.jsp">스타크래프트</a>
<h2>디렉티브</h2>
<a href="inc/directive.jsp?pid=qwer&marriage=false">inc디렉티브</a>
<hr />
<h2>포워드</h2>
<a href="forward/forward1.jsp?pid=asz&age=27&marriage=1"> 포워드 1 </a>
<hr />
<a href="forward/member.jsp"> 맴버 </a>


</body>
</html>