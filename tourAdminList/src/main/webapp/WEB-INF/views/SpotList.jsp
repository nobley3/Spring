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

    $("#confirmbtn").click(function(){
        let confirmedSpots = [];
        
        $(".confirmlist tbody tr").each(function(){
        	
        	let contentid = $(this).find("td:first").text();  // 예시: 첫 번째 열에 contentid가 있다고 가정
        	let contenttypeid = $(this).find("td:nth-child(2)").text();  // 예시: 두 번째 열에 contenttypeid가 있다고 가정
            let title = $(this).find("td:nth-child(4)").text();
            

            confirmedSpots.push({
            	contentid: contentid,
                contenttypeid: contenttypeid,
                title: title
            });
        });

        // 선택한 데이터를 alert로 띄우기
        let alertMessage = "선택한 여행지 목록:\n";
        for (let i = 0; i < confirmedSpots.length; i++) {
            alertMessage += "순번: " + confirmedSpots[i].rownum + ", Title: " + confirmedSpots[i].title + ", Address: " + confirmedSpots[i].address + "\n";
        }
        alert(alertMessage);

        $.ajax({
            type: "POST",
            url: "/tourAlist/confirmList",
            contentType: "application/json",
            data: JSON.stringify(confirmedSpots),
            success: function(resp){
                if(resp === "success"){
                    alert("여행지 목록이 확인되었습니다.");

                    // 여기에 필요한 경우 추가 작업을 수행할 수 있습니다.
                    // 예: 페이지 새로고침 또는 추가적인 UI 업데이트 등
                } else {
                    alert("오류가 발생했습니다.");
                }
            },
            error: function(){
                alert("서버와의 통신 중 오류가 발생했습니다.");
            }
        });
    });
});

</script>
</body>
</html>