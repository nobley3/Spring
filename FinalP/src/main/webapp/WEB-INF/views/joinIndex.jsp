<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function userregi(){ 
	 
	
	let id = $("#id").val();
	let nickname = $("#nickname").val();
	let pw = $("#pw").val();
	
	
	let user = {id : id, nickname : nickname, pw:pw};
	let users = JSON.stringify(user);
	 
	
	alert( users);
	
	$.ajax({
	        type: "post",
	        url: "/finalp/register",
	        data : users,
	        contentType: "application/json",
	        success: function (data) {
	            alert("등록완료");
	            window.location.reload();
	        },
	        error: function () {
	            alert("오류 발생");
	        }
	    });
}
</script>
</head>
<body>
  <h2> 회원가입</h2>
    아이디    <input id="id" type="text"  name="">    <button type="button">아이디 중복확인</button>
    닉네임    <input id="nickname"type="text">
    비밀번호    <input id="pw" type="text">
    비밀번호확인    <input id="checkpw" type="text">
    <button type="button" onclick="userregi()">회원가입</button>
</body>
</html>