<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/joinForm.css">
</head>
<body>
<h1>joinForm</h1>
<form action="joinReg.jsp" method="post">
	<div>아이디<input type="text" name="pid" value="aaa" /></div>
	<div>비밀번호<input type="password" name="pw" /></div>
	<div>이름<input type="text" name="name" placeholder="이름을 써주세요" /></div>
	<div>전화번호
			<select name="tel0">
				<%for(String tt : "010,011,012,016,017,018,019".split(",")){%>
					<option value="<%=tt%>"><%=tt %></option>
				<%} %>
			</select>
			-
			<input type="text" name="tel1">
			-
			<input type="text" name="tel2">
			</div>
	<div>취미
	<input type="checkbox" name="hobby" value ="coding"/>coding
	<input type="checkbox" name="hobby" value ="debug"/>debuging
	<input type="checkbox" name="hobby" value ="program"/>programing
	</div>
	<div>성별
	<input type="radio" name="gender" value="m" />man
	<input type="radio" name="gender" value="f" />girl
	<input type="radio" name="gender" value="another" />another
	</div>
	<div>남기실말
		<textarea name="content" rows="7" cols="24" >남겨요</textarea>
	</div>
	<div>
		<input type="submit"  value="가입하기" />
		<input type="submit" value="초기화" />
		<a href="../join.jsp"></a>
	</div>
</form>
</body>
</html>