<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function search() {
		alert("afa");

		$.ajax({
			type : "get",
		 	url : "${pageContext.request.contextPath}/airList", //경로 절대값
			success : function(data) {
				alert("success");
				alert(data);
				alert(data[0].informCause); //확인용도
				let result = toHTML(data);
				$("#result").html(result);
				alert("성공");
			},
			error : function(error) {
				alert("error");
			}

		});
	}
	function toHTML(d) {
		console.log(d);
		let str = "<ul>";
		for (let i = 0; i < d.length; i++) {
			let item = d[i];
			str += "<li>" + item.informCause + " " + item.dataTime + " " + item.informGrade + "</li>"
					+ " ";
		}
		str += "</ul>";
		alert(str);

		return str;

	}
	 
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button onclick="search()">조회</button>
<div id="result"></div>
</body>
</html>
