<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- method="post" enctype="multipart/form-data" 파일전송시 필수값 -->
	
	
	<form action="/day4/upload2" method="post" enctype="multipart/form-data">
		제목 : <input type="text"> <input type="file" name="file">
		<button>전송</button>
	</form>
</body>
</html>