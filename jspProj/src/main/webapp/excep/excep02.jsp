<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorPage 방식</title>
</head>
<body>

<h1>errorPage 방식</h1>
<%= exception.getMessage() %>

<!-- 익스플로러는 페이지의 내용을 513 byte 이상 되어야 정상 처리함 -->
</body>
</html>