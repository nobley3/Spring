<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>관리자메인페이지</title>
<style type="text/css">
a{
text-decoration: none;
color: black;
}
button{
width: 150px;
height: 35px;
border-radius: 5px;
border: none;
border : 2px solid #ededed;
background-color: white;
}
.adminBox{
width: 900px;
height: 500px;
border-radius: 10px;
border: 1px solid black;
background-color: #f9f9f9;
}

</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
<h2>관리자메인페이지</h2>
<div class="adminBox">
<button><a href="${path}/admin.regi">Add Member</a></button>
<button><a href="${path}/spotlist">여행지</a></button>
</div>
</body>
</html>