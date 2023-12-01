<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>축제/행사 리스트</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<h2>축제/행사 리스트</h2>

	<table border="1">
		<tr>
			<th>순번</th>
			<th>Title</th>
			<th>Address</th>
		</tr>
		<c:forEach var="Fspot" items="${eventspots}">
			<tr>
				<td>${Fspot.rownum}</td>
				<td style="display: none;">${Fspot.contentid}</td>
				<td style="display: none;">${Fspot.contenttypeid}</td>
				<td>${Fspot.title}</td>
				<td>${Fspot.address}</td>
				<td><input type="checkbox" name="checkbox"
					value="${Fspot.contentid}:${Fspot.contenttypeid}"
					class="spotCheckbox"></td>
			</tr>
		</c:forEach>
	</table>
	
	<button id="confirmbtn">축제/행사 확인</button>
	
	<div id="selectedSpots">
        <h3>선택한 축제/행사</h3>
        <ul id="selectedSpotsList"></ul>
    </div>
	
	
	
	<script type="text/javascript">
	$(document).ready(function(){
		
		$("#confirmbtn").click(function(){
			//alert("click");
			let spotCheckboxes = $("input[type='checkbox']:checked");
			let selectedSpots = [];
			
			spotCheckboxes.each(function(){
				let values = $(this).val().split(":")
				
				selectedSpots.push({
					contentid: values[0],
					contenttypeid: values[1]
				});
			});
			
			
			$.ajax({
				
				type:"post",
				url: "/tourAlist/confirmFlist",
				contentType: 'application/json',
				data: JSON.stringify(selectedSpots),
				success:function(data){
					alert(" 축제/행사가 성공적으로 저장되었습니다.");
					showCheckedList(selectedSpots);
				},
				error:function(err){
					alert("오류가 발생했습니다.");
					console.log(err);
				}
			});
			//
			function showCheckedList(selectedSpots){
				let selectedSpotsList = $("#selectedSpotsList");
	            selectedSpotsList.empty(); // 기존 목록 지우기
	            
	            $.each(selectedSpots, function (index, spot) {
	                let listItem = $("<li>").text("Content ID: " + spot.contentid + ", ContentType ID: " + spot.contenttypeid);
	                selectedSpotsList.append(listItem);
	            });
			}
			
		});
	});
	</script>
</body>
</html>