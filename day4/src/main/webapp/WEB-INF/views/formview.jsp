<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Get요청</h2>
<form  action="/day4/formRegisterGet"  method="get">
<input type="text" name="id">
<input type="text" name="pw">

<button>등록</button>
</form>

<h2>Post</h2>
<form  action="/day4/formRegisterPost"  method="post">
<input type="text" name="id">
<input type="text" name="pw">
<button>등록</button>
</form>
</body>
</html>