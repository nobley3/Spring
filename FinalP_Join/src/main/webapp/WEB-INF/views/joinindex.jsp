<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입</h1>
<form action="" method="post">
<p>
		<label for="id">아이디</label>
		<input type="text" id="userId" name="id"/>
	</P>
	<p>
		<label for="nickname">이름</label>
		<input type="text" id="userName" name="nickname"/>
	</P>
	<p>
		<label for="password">비밀번호</label>
		<input type="password" id="password" name="pw"/>
	</P>
	 
	<button type="submit">회원가입</button>
	<p><a href="/board/login">로그인</a></p>

</form>
</body>
</html>