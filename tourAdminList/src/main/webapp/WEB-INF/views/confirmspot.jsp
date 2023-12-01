<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<table border="1" class="confirmlist">
    <thead>
    <tr>
        <th>순번</th>
        <th>Title</th>
        <th>Address</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach var="spot" items="${confirmedSpots}">
            <tr>
                <td>${spot.rownum}</td>
                <td>${spot.title}</td>
                <td>${spot.address}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>