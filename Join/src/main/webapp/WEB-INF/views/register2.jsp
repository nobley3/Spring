<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	
</head>
<body>
	<h2>회원 가입</h2>
	
		<!-- 아이디 -->

		<form action="checkId" method="post">
			<div>
				<label for="userid">아이디:</label> <input id="userid" type="text"
					name="userid">
				<button type="button" id="checkId">중복확인</button>
				<br>
				<div id="confirmid"></div>
			</div>
		</form>
		<!-- 닉네임 -->
		<form action="checkNickname" method="post">
			<div>
				<label for="nickname">닉네임:</label> <input id="nickname" type="text"
					name="nickname">
				<button type="button" id="checkNickname">중복확인</button>
				<div id="confirmnickname"></div>
			</div>
		</form>

		<!-- 비밀번호 -->
		<div>
			<label for="pw">비밀번호:</label> 
			<input id="pw" type="password" name="pw" placeholder="영문,숫자,특수문자 조합하여 8자~16자" >
			<button type="button" id="showPw">비밀번호 표시</button>
			<br>
		</div>
		<div>
			<label for="checkpw">비밀번호 확인:</label> 
			<input id="checkpw" type="password" name="checkpw">
			<button type="button" id="showPw2">비밀번호 표시</button>
			<br>
		</div>
		<div id="confirmpw"></div>

		<!-- 회원가입 -->
		
		<div>
			<button type="button" id="registerButton">회원가입</button>
		</div>
		
	
	<!-- 결과 메세지 창 -->
	<div id="resultMessage"></div>

	<script>
	$(document).ready(function() {  
		// 아이디 중복 검사 결과를 저장할 변수
		let isusableid = false;
		
	    // 아이디 중복검사 버튼 누르면
	    $("#checkId").click(function() {
	        let id = $("#userid").val().trim();

	        // 아이디 공백, 중복 검사, 유효성 검사
	        if (id === '') {
	            $("#confirmid").css("color", "red").text("ID를 입력하세요.");
	            isusableid = false;
	        } else if (id.indexOf(' ') >= 0) {
	            $("#confirmid").css("color", "red").text("ID를 공백없이 입력하세요.");
	            isusableid = false;
	        } else if (!/^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{4,12}$/.test(id)) {
	            $("#confirmid").css("color", "red").text("아이디는 영문 대소문자와 숫자를 포함하여 4~12자리로 입력해야합니다!");
	            isusableid = false;
	        } else {
	            // 아이디 중복확인
	            $.ajax({
	                url: "/finalp/checkId",
	                type: "post",
	                data: { userid: id },
	                success: function(data) {
	                    if (data.trim() === "사용중인 아이디 입니다.") {
	                        $("#confirmid").css("color", "red").text("사용 중인 ID입니다.");
	                        isusableid = false;
	                    } else {
	                        $("#confirmid").css("color", "blue").text("사용 가능한 ID입니다.");
	                        isusableid = true;
	                    }
	                },
	                error: function(err) {
	                    console.log(err);
	                    isusableid = false;
	                }
	            });
	        }
	    });
	    //$("#checkId").click(function() 끝
	    	let isusableNickname = false;
	    		
	    		//닉네임 중복검사 버튼 누르면
	    		$("#checkNickname").click(function(){
	    		
	    			let nickname = $("#nickname").val();
	    			  // 닉네임 공백, 중복 검사
	    	        if (nickname === '') {
	    	            $("#confirmnickname").css("color", "red").text("닉네임을 입력하세요.");
	    	            isusableNickname = false;
	    	        } else if (nickname.indexOf(' ') >= 0) {
	    	            $("#confirmnickname").css("color", "red").text("닉네임을 공백없이 입력하세요.");
	    	            isusableNickname = false;
	    	        }  else {
	    	            // 닉네임 중복확인
	    	            $.ajax({
	    	                url: "/finalp/checkNickname",
	    	                type: "post",
	    	                data: { nickname: nickname },
	    	                success: function(data) {
	    	                    if (data=== "1") {
	    	                        $("#confirmnickname").css("color", "red").text("사용 중인 닉네임입니다.");
	    	                        isusableNickname = false;
	    	                    } else {
	    	                        $("#confirmnickname").css("color", "blue").text("사용 가능한 닉네임입니다.");
	    	                        isusableNickname = true;
	    	                    }
	    	                },
	    	                
	    	                error: function(err) {
	    	                    console.log(err);
	    	                    isusableNickname = false;
	    	                }
	    	            });
	    	        }
	    		});
	    		//$("#checkNickname").click(function()끝
	    				
	   			// 비밀번호 유효성 및 확인
   					$("#pw").on("input", function() {
				    let pw = $("#pw").val();
				    let checkpw = $("#checkpw").val();
				    let pwreg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}$/;
				
				    if (!pwreg.test(pw)&&!pwreg.test(checkpw)) {
				        $("#confirmpw").css("color", "red").text("비밀번호는 영문대소문자/숫자/특수문자를 포함하여 8~16자리로 입력해야합니다!");
				        
				    }else{
				        $("#confirmpw").css("color", "blue").text("사용 가능한 비밀번호 입니다.");
				    }
				   
				});
   				
	    		//비밀번호가 일치하지 않습니다
   				$("#checkpw").on("input", function() {
   					
	                let pw = $("#pw").val();
	                let checkpw = $("#checkpw").val();
	                let pwreg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}$/;
	                
	                if(pw !== checkpw) {
	                    $("#confirmpw").css("color", "red").text("비밀번호가 일치하지 않습니다.");
	                }else if(!pwreg.test(pw)&&!pwreg.test(checkpw)){
	                	$("#confirmpw").css("color", "red").text("비밀번호는 영문대소문자/숫자/특수문자를 포함하여 8~16자리로 입력해야합니다!");
	                } 
	                else {
	                    $("#confirmpw").css("color", "blue").text("사용 가능한 비밀번호 입니다.");
	                }
	                
       			});
	    	
   				
   				// "비밀번호 표시" 버튼 클릭
				
				let pwInput = $("#pw");
					let checkpwInput = $("#checkpw");
					let confirmpw = $("#confirmpw");
					
				function showPassword(inputField) {
					if (inputField.attr("type") === "password") {
						inputField.attr("type", "text");
					} else {
						inputField.attr("type", "password");
					}
				}

				$("#showPw").click(function() {
					showPassword(pwInput);
					$(this).text(function(i, text) {
				        return text === "비밀번호 표시" ? "비밀번호 숨기기" : "비밀번호 표시";
				    });
				});

				$("#showPw2").click(function() {
					showPassword(checkpwInput);
					$(this).text(function(i, text) {
				        return text === "비밀번호 표시" ? "비밀번호 숨기기" : "비밀번호 표시";
				    });
				});


   				//CapsLock 여부
   				function checkCapsLock(event){
   					let capsLockOn = event.getModifierState && event.getModifierState('CapsLock');
   					
   					if(capsLockOn){
   						$("#resultMessage").css("color", "red").text("<CapsLock>이 켜져 있습니다.");
   					}else{
   						$("#resultMessage").text("");
   					}
   				}
   					document.getElementById("pw").addEventListener('keydown',checkCapsLock);
   					document.getElementById("checkpw").addEventListener('keydown',checkCapsLock);
   				
   				
   				
	  //회원가입 버튼 누르면 
		$("#registerButton").click( function(){			
			
			
			let id = $("#userid").val();
			let nickname = $("#nickname").val();
			let pw = $("#pw").val();
			let checkpw = $("#checkpw").val();
			
			
			//모든필드 입력
			
			if (id === ""||nickname === ""||pw === ""||checkpw === ""){
				$("#resultMessage").text("모든 필드를 입력하세요.");
				
				if (id === "") {
		            $("#userid").focus();
		        } else if (nickname === "") {
		            $("#nickname").focus();
		        } else if (pw === "") {
		            $("#pw").focus();
		        } else if (checkpw === "") {
		            $("#checkpw").focus();
		        }
				
				return;
			}
			
			//아이디 중복확인 유무
			if(!isusableid){
				$("#confirmid").css("color", "red").text("아이디 중복확인을 하세요.");
				return;
			}
			
			//닉네임 중복확인 유무
			if(!isusableNickname){
				$("#confirmnickname").css("color", "red").text("닉네임 중복확인을 하세요.");
				return;
			}
			//회원가입시도
			let user = {
					id : id,
					nickname : nickname,
					pw : pw
			};
			
			$.ajax(  {
				url : "/finalp/register",
				type :"post" ,
				data :  user ,
				success : function( rec){
					alert("성공");
					alert( rec);
				},
				error : function(err){
					console.log( err);
				}					
				
			});
			
		});
		
		//$("#registerButton").click( function()끝
	});
		//$(document).ready(function()끝
	</script>
</body>
</html>