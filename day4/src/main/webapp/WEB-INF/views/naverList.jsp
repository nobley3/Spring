<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img{
size: 50px;
}
</style>
</head>
<body>
<h2>Naver List</h2>

<table border="1">
    <tr>
        <th>Title</th>
        <th>Link</th>
        <th>Image</th>
        <th>Price</th>
    </tr>

    <c:forEach var="naver" items="${naverList}">
        <tr>
            <td>${naver.title}</td>
            <td><a href="${naver.link}" target="_blank">Visit Naver</a></td>
            <td><img src="${naver.image}" alt="${naver.title}" style="width: 90px; height: auto;"></td>
            <td>${naver.lprice}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>


 