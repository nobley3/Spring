<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
 <h2>회원 가입</h2>
    <form id="registrationForm">
        <div>
            <label for="id">아이디:</label>
            <input id="id" type="text" name="id"><br>
        </div>
        <div>
            <label for="nickname">닉네임:</label>
            <input id="nickname" type="text" name="nickname"><br>
        </div>
        <div>
            <label for="pw">비밀번호:</label>
            <input id="pw" type="password" name="pw"><br>
        </div>
        <div>
            <label for="checkpw">비밀번호 확인:</label>
            <input id="checkpw" type="password" name="checkpw"><br>
        </div>
        <div>
            <button type="button" id="registerButton">회원가입</button>
        </div>
    </form>
    
    <div id="resultMessage"></div>
    
    <script>
        $(document).ready(function () {
            $("#registerButton").click(function () {
                let id = $("#id").val();
                let nickname = $("#nickname").val();
                let pw = $("#pw").val();
                let checkpw = $("#checkpw").val();
                
                if (pw !== checkpw) {
                    $("#resultMessage").text("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
                    return;
                }
                
                let user = {
                    id: id,
                    nickname: nickname,
                    pw: pw
                };

                $.ajax({
                    type: "POST",
                    url: "/finalp/register",
                    data: JSON.stringify(user),
                    contentType: "application/json",
                    success: function (data) {
                        $("#resultMessage").text(data);
                    },
                    error: function () {
                        $("#resultMessage").text("오류 발생");
                    }
                });
            });
        });
    </script>
</body>
</html>