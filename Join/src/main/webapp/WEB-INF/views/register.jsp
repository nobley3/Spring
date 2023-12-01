<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
			<label for="pw">비밀번호:</label> <input id="pw" type="password"
				name="pw" placeholder="영문,숫자,특수문자 조합하여 8자~16자">
			<button type="button" id="showPw">비밀번호 표시</button>
			<br>
		</div>
		<div>
			<label for="checkpw">비밀번호 확인:</label> <input id="checkpw"
				type="password" name="checkpw">
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

							/* 아이디 중복확인 버튼 클릭 시 */
							/* 아이디 공백일때 */
							$("#checkId")
									.click(
											function() {
												let id = $("#userid").val();

												if (id.trim() === '') {
													$("#confirmid").css(
															"color", "red")
															.text("ID를 입력하세요.");
													return false;
												} else if (id.indexOf(' ') >= 0) {
													$("#confirmid")
															.css("color", "red")
															.text(
																	"ID를 공백없이 입력하세요.");
													return false;
												}

												/* 아이디 중복확인 */
												$
														.ajax({
															type : "post",
															url : "/finalp/checkId?userid="
																	+ id,
															
															success : function(
																	data) {
																//alert(data);
																if (data === "중복된 아이디 입니다.") {
																	$(
																			"#confirmid")
																			.css(
																					"color",
																					"red")
																			.text(
																					"사용 중인 아이디입니다.");
																} else {
																	$(
																			"#confirmid")
																			.css(
																					"color",
																					"blue")
																			.text(
																					"사용 가능한 아이디입니다.");
																}
															},
															error : function(
																	xhr,
																	status,
																	error) {
																console
																		.log(
																				"AJAX 오류 발생:",
																				status,
																				error);
																$(
																		"#resultMessage")
																		.text(
																				"오류 발생");
															}
														});
											});

							/* 닉네임 공백 */
							$("#checkNickname")
									.click(
											function() {
												let nickname = $("#nickname")
														.val();
												if (nickname.trim() === '') {
													$("#confirmnickname")
															.css("color", "red")
															.text("닉네임을 입력하세요.");
													return false;
												} else if (nickname
														.indexOf(' ') >= 0) {
													$("#confirmnickname")
															.css("color", "red")
															.text(
																	"닉네임을 공백없이 입력하세요.");
													return false;
												}

												/* 닉네임 중복확인 */
												$
														.ajax({
															type : "post",
															url : "/finalp/checkNickname?nickname="
																	+ nickname,					
															success : function(
																	data) {
																//alert(data);
																if (data === "1") {
																	$(
																			"#confirmnickname")
																			.css(
																					"color",
																					"red")
																			.text(
																					"사용 중인 닉네임 입니다.");
																} else {
																	$(
																			"#confirmnickname")
																			.css(
																					"color",
																					"blue")
																			.text(
																					"사용 가능한 닉네임 입니다.");

																}
															},
															error : function(
																	xhr,
																	status,
																	error) {
																console
																		.log(
																				"AJAX 오류 발생:",
																				status,
																				error);
																$(
																		"#resultMessage")
																		.text(
																				"오류 발생");
															}
														});

											});

							/* 회원가입 버튼 누를때 */
							
							// 
							
							/*
							 $("#registerButton").click( function () {} );  
							 document.querySelector("#registerButton").addEventListener( "click" , function() {} );
							 
							 */
							
							$("#registerButton").click(
									
									
											function() {
												alert("dkdfkdfjdfd");
												
												let id = $("#userid").val();
												let nickname = $("#nickname").val();
												let pw = $("#pw").val();
												let checkpw = $("#checkpw").val();
														
												/* 모든 필드 입력 */
												if (id === ""
														|| nickname === ""
														|| pw === ""
														|| checkpw === "") {
													$("#resultMessage").text(
															"모든 필드를 입력하세요.");
													return;
												}

												/* 비밀번호 확인 */

												if (pw !== checkpw) {
													$("#resultMessage").text(
													"비밀번호와 비밀번호 확인이 일치하지 않습니다.");		
													return;
												} else if (pw.indexOf(' ') >= 0) {
													$("#confirmpw").css("color", "red").text(
													"비밀번호를 공백없이 입력하세요.");															
													return;
												}

												let isValidPassword = checkPasswordValidity(pw);

												if (!isValidPassword) {
													$("#confirmpw").css("color", "red").text(
													"비밀번호는 숫자, 영문, 특수문자를 모두 포함하여 8자에서 16자여야 합니다.");							
													return;
												}

												/* 아이디 중복확인 회원가입 막기 */
												let confirmMessage = $(
														"#confirmid").text();
												if (confirmMessage !== "사용 가능한 아이디입니다.") {
													$("#resultMessage").text(
															"사용 중인 아이디입니다.");
													return;
												}

												//회원가입 시도
												
												
												
												alert(nickname );
												
												 

 						});

							
		});

					 
	</script>
</body>
</html>