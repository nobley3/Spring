<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


Border  List
<!-- 두가지 방법 -->
<a  href="/inter/logout">로그아웃</a>
<a  href='<c:url value="/logout"/>'> 로그아웃</a>
</body>
</html>