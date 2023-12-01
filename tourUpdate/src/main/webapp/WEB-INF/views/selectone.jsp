<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
<h2>회원정보</h2>
<c:if test="${not empty user}">

<form action="/update/updateUser" method="post">

    <p>User ID: <input type="text" readonly="readonly" value="${user.userid}" /></p>
    
    <label>Nickname: <input type="text"  id="nickname" name="nickname" value="${user.nickname}"/></label>
    <button id="checkNickname" type="button" >중복확인</button>
    <div id="confirmnickname"></div>
    <p>Password: <input type="text" name="pw" value="${user.pw}"/></p>

   <input type="submit" value="수정" id="modifybtn">

</form>

</c:if>


<c:if test="${empty user}">
    <p>No user information available.</p>
</c:if>
<script type="text/javascript">


$(document).ready(function(){
	
	//let isusableNickname = false;
	
	$("#checkNickname").click(function(e){
	    
		e.preventDefault(); // 기본 폼 제출 방지
		
		let nickname = $("#nickname").val();
		
		
		$.ajax({
			type:"post",
			url: "/update/checkNickname",
			data:{nickname:nickname},
			success:function(data){
				if(data==="1"){
					 $("#confirmnickname").css("color", "red").text("사용 중인 닉네임입니다.");
					// isusableNickname = false;
				}else{
					 $("#confirmnickname").css("color", "blue").text("사용 가능한 닉네임입니다.");
					 //isusableNickname = true;
				}
			},
			error : function(err){
				console.log(err);
				//isusableNickname = false;
				
			}
		});
		
	});
	//
	$("#modifybtn").click(function(e){
		//e.preventDefault(); // 기본 폼 제출 방지
		/*
		if(!isusableNickname){
            $("#confirmnickname").css("color", "red").text("닉네임 중복확인을 하세요.");
            return;
        }
		*/
	});
	//
	
});


</script>
</body>
</html>