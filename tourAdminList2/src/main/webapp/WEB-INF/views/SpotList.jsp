<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>여행지리스트</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<h2>여행지리스트</h2>

<table border="1">
  <thead>
            <tr>
                <th>순번</th>
                <th>Title</th>
                <th>Address</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="spot" items="${tourspots}">
                <tr>
                	<td style="display: none;">${spot.contentid}</td>
                	<td style="display: none;">${spot.contenttypeid}</td>
                    <td>${spot.rownum}</td>
                    <td>${spot.title}</td>
                    <td>${spot.address}</td>
                    <td><input type="checkbox" class="spotCheckbox"></td>
                </tr>
            </c:forEach>
        </tbody>
</table>

<form>
<table border="1" class="confirmlist">
 <thead>
            <tr>
            	<th style="display: none;"></th>
            	<th style="display: none;"></th>
                <th>순번</th>
                <th>Title</th>
                <th>Address</th>
                
            </tr>
        </thead>
        <tbody>
            <c:forEach var=" " items="">
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    
                </tr>
            </c:forEach>
        </tbody>

</table>
<button id="confirmbtn">여행지 확인</button>
</form>


<script type="text/javascript">
$(document).ready(function(){
    $(".spotCheckbox").change(function(){
        let row = $(this).closest("tr");

        if($(this).is(":checked")){
            let rownum = row.find("td:nth-child(3)").text();
            let title = row.find("td:nth-child(4)").text();
            let address = row.find("td:nth-child(5)").text();

            let newRow = '<tr>' +
            '<td>' + rownum + '</td>' +
            '<td>' + title + '</td>' +
            '<td>' + address + '</td>' +
            '</tr>';

            $(".confirmlist tbody").append(newRow);
        } else {
            // 체크가 해제된 경우 해당 행을 제거
            let rownum = row.find("td:nth-child(3)").text();
            $(".confirmlist tbody tr:contains('" + rownum + "')").remove();
        }
    });
    //
    
    $("#confirmbtn").click(function(){
    	alert("click");
    	// 선택된 여행지 데이터 가져오기
    	let selectedSpots = [];
    	
    	$(".spotCheckbox:checked").each(function (){
    		let row = $(this).closest("tr");
    		let contentid = row.find("td:nth-child(1)").text();
    		let contenttypeid = row.find("td:nth-child(2)").text();
    		 

    		selectedSpots.push({
    			contentid: contentid,
                contenttypeid: contenttypeid
                
    		});
    	});
    	
    	$.ajax({
    		
    		 type: "POST",
             contentType: "application/json",
             url: "/tourAlist/confirmList",
             data: JSON.stringify(selectedSpots),
             success: function (resp){
            	  
            	 alert("여행지가 성공적으로 저장되었습니다.");
             },
             error: function (){
            	 alert("오류가 발생했습니다.");
             }
    	});
    });
 
});

</script>
</body>
</html>