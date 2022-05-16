<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Form</title>
</head>
<body>
<form action="movieReg.jsp" >
	<table  border="1">
		<tr>
			<td>제목</td>
			<td>
				<input type="radio" name="title" value="starcraft" />스타크래프트
				<input type="radio" name="title" value="warcraft" />워크래프트
				<input type="radio" name="title" value="diablo" />디아블로
			</td>
		</tr>
		<tr>
			<td>인원수</td>
			<td>
				<select name="cnt">
					<% for(int i= 0; i<10; i++){%>
						<option value="<%=i%>"><%=i%>명</option>
					<%} %>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="예약" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>