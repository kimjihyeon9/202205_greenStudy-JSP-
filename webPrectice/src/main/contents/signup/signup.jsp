<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="signup2.jsp">
	<table  border="1">
		<tr>
			<td>이름</td>
			<td> <input type="text" name="name" /> </td>
		</tr>
		<tr>
			<td>생년</td>
			<td>
				<select name="year"> <%for(int i=1940;i<2022;i++){%>
					<option value="<%=i%>"><%=i%>년</option>
					<%}%> 
				</select>
			</td>
			
		</tr>
		<tr>
			<td>국적</td>
			<td>
				<select name="from">
					<option value="kr">내국인</option>
					<option value="another">외국인</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="더보기" />
			</td>
		</tr>
	</table>
</form>

</body>
</html>