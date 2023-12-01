<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<tr>
		<th>ID</th>
		<td>
			<form:input path="memId" />
			<form:errors path="memId" />
			<button onclick="return false;" type="button" id="checkId">아이디중복확인</button>
		</td>
	</tr>
</body>
</html>