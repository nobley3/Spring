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


function updateMemoList(data) {
    $("#mList").empty();
    $.each(data, function (index, memo) {
        $("#mList").append(
            "<tr>" +
            "<td>" + memo.code + "</td>" +
            "<td>" + memo.rownum + "</td>" +
            "<td>" + memo.content + "</td>" +
            "</tr>"
        );
    });
}

//등록
function register(){
	
	let content = $("#contents").val();
	
	let memo = {content : content};
	let memos = JSON.stringify(memo);
	
	console.log(memos);
	console.log(memo);
	
	
	 $.ajax({
	        type: "post",
	        url: "/memo/memo",
	        data : memos,
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

//삭제

	function delete1(code){
		alert(code);
		$.ajax({
	        type: "delete",
	        url: "/memo/memo/"+code,
	        success: function (data) {
	           
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
<h2>메모 리스트</h2>
<table border="1">
  <tr>
    <th>코드</th>
    <th>순번</th>
    <th>내용</th>
    <th>관리</th>
  </tr>
  <c:forEach var="memo" items="${mList}">
    <tr>
      <td>${memo.code}</td>
      <td>${memo.rownum}</td>
      <td>${memo.content}</td>
      <td><button onclick="delete1('${memo.code}')">삭제</button></td>
    </tr>
  </c:forEach>
</table>

<input type="text" id="contents">
<button onclick=register()>등록</button>


</body>
</html>