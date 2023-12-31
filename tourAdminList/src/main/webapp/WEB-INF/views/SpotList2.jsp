<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>여행지리스트</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link href="${path}/resources/css/SpotList.css" rel="stylesheet"/>
</head>
<body>
	<div class="tablewrap">
	<h2>[여행지리스트]</h2>
	
	<table border="1">
		<tr>
			<th>순번</th>
			<th>Title</th>
			<th>Address</th>
		</tr>
		<c:forEach var="spot" items="${tourspots}">
		<tr>
			<td>${spot.rownum}</td>
			<td style="display: none;">${spot.contentid}</td>
           	<td style="display: none;">${spot.contenttypeid}</td>
			<td>${spot.title}</td>
			<td>${spot.address}</td>
			<td><input type="checkbox" name="checkbox" value="${spot.contentid}:${spot.contenttypeid}" class="spotCheckbox"   ${  not empty spot.ck ?'checked' :'' } ></td>
		</tr>
		</c:forEach>
	</table>
	
	<button id="confirmbtn">여행지확인</button>
	</div>
	
	<div class="tablewrap">
	<h2>[체크된 여행지리스트]</h2>
	<table border="1"  id="selectedSpots">
		<tr>
			<th>Contentid</th>
			<th>순번</th>
			<th>Title</th>
			<th>Address</th>
		</tr>
		
		<tbody id="selectedSpotList"></tbody>
		 
	</table>
	<button id="deletebtn">여행지 삭제</button>
	</div>
	
	<script type="text/javascript">
	$(document).ready(function () {
		
		  $.ajax({
              type: "GET",
              url: "/tourAlist/selectedSpot",
              success: function(selectedSpots) {
            	 // console.log( "ㅇㄹㅇㄹㅇ" +selectedSpots);
                  showCheckedList(selectedSpots);
              },
              error: function(err) {
                  console.log(err);
              }
          });
		
		$("#confirmbtn").click(function(){			
			let spotCheckboxes = $("input[type='checkbox']:checked");
			let selectedSpots = [];
			
			spotCheckboxes.each(function () {
				
				let values = $(this).val().split(":");
				let row = $(this).closest('tr');
				
				selectedSpots.push({
					contentid: values[0],
					contenttypeid: values[1],
					rownum: row.find('td:eq(0)').text(), // 첫 번째 열의 텍스트 가져오기
	                title: row.find('td:eq(3)').text(),   // 네 번째 열의 텍스트 가져오기
	                address: row.find('td:eq(4)').text() 	
				});
			});
			
			$.ajax({
				type: "POST",
				url: "/tourAlist/confirmList",
				contentType: 'application/json',
				data: JSON.stringify(selectedSpots),
				success: function(data){
					alert("여행지가 성공적으로 저장되었습니다.");
					showCheckedList(selectedSpots);	
					location.reload();
				},
				error:function(err){
					alert("오류가 발생했습니다.");
					console.log(err);
				}
			});
			
		 });
			//ajax끝
			
			$("#deletebtn").click(function(){
				
				 let selectedSpotCheckboxes = $("input[name='selectedCheckbox']:checked");
				 
				 
				 //alert( "count" + selectedSpotCheckboxes.length) ;
				 console.log("Dfdfd"  +selectedSpotCheckboxes ); 
				 
	             let selectedSpotList  = [];
				
	             
	             for( let i =0 ; i<selectedSpotCheckboxes.length ; i++) {
	            	let  ck  =  selectedSpotCheckboxes[i];	            	
	            	let deleteItem  = ck.value;
	            	
	            	//alert(deleteItem + "test");
	            	selectedSpotList.push( deleteItem);
	            	
	             } 
	            	 
	             //alert(selectedSpotList + "test1");
	            	 console.log( selectedSpotList+ "test2" );
	            // let a=["2255455","7548455"];
	             
	             $.ajax({
	            	 
	            	 type: "POST",
	                 url: "/tourAlist/deleteSelectedSpots",
	                 contentType: 'application/json',
	                 data: JSON.stringify(selectedSpotList),
	                 success: function (data) {
	 		            alert("여행지가 성공적으로 삭제되었습니다.");
	 		            location.reload(); // 페이지 새로고침
	 		           console.log(selectedSpotList);
	 		        },
	 		        error:function(err){
	 		        	 alert("dugodwl오류가 발생했습니다.");
	                     console.log(err);
	 		        }
	 		      
	             });
	             
	             
	             
			});
			
			
			function showCheckedList(selectedSpots){
				
				console.log( "selectedSpots" + selectedSpots );
				
				let selectedSpotList = $("#selectedSpotList");
				selectedSpotList.empty(); // 기존 목록 지우기
	            
	            $.each(selectedSpots, function (index, spot) {	            	
	            	 let row = $("<tr>");
	            	 row.append($("<td>").text(spot.contentid));
	                 row.append($("<td>").text(spot.rownum));
	                 row.append($("<td>").text(spot.title));
	                 row.append($("<td>").text(spot.address));
	                 row.append($("<td>").html(  "<input type='checkbox'  name='selectedCheckbox' value='" + spot.contentid  +"'>"  ));
	                 selectedSpotList.append(row);
	                 
	            });
			}
		
		});
		
		
		
	 
	</script>
</body>
</html>