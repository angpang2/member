<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-27
  Time: 오전 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MemberSave.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <script src="/resources/js/jqury.js"></script>
    <style>
        #save-form{
            width: 800px;
        }
    </style>
</head>
<body>
    <div class="container" id="save-form">
        <form action="/save" method="post" name="saveForm">
            <input type="text" name="memberEmail" placeholder="이메일" class="form-control" onblur="emailCheck()" id="email">
            <span id="email-input-check"></span>
            <span id="email_result"></span>
            <input type="text" name="memberPassword" placeholder="비밀번호" class="form-control">
            <input type="text" name="memberName" placeholder="이름" class="form-control">
            <input type="text" name="memberAge" placeholder="나이" class="form-control">
            <input type="button" value="회원가입" onclick="save()" class="btn btn-primary">
<%--            <button onclick="btn1Fn()">버튼가입</button>--%>
        </form>
    </div>

</body>
<script>
    const save = () => {
        console.log("save함수호출");
        if(document.saveForm.memberEmail.value==""){
            // alert("이메일을 입력해 주세요");
            // 이메일 입력 하지 않았을 때 span에 빨간색으로 출력
            const emailCheck = document.getElementById("email-input-check");
            emailCheck.innerHTML = "이메일을 입력해주세요";
            emailCheck.style.color = "red";

            return false;
        }else if(document.saveForm.memberPassword.value==""){
            alert("비밀번호를 입력해 주세요")
        }else if(document.saveForm.memberName.value==""){
            alert("이름을 입력해주세요")
        }else if(document.saveForm.memberAge.value==""){
            alert("나이를 입력해 주세요")
        }
        document.saveForm.submit();
    }

    const btn1Fn = () => {
        console.log("btn1Fn 함수호출")
    }


    const emailCheck = () => {
        const memberEmail = document.getElementById("email").value;
        console.log(memberEmail)
        const emailResult = document.getElementById("email_result");
        console.log(memberEmail)
        console.log("emailCheck 함수호출")
        $.ajax({
            type: "post",
            url: "/check",
            data: {
                value1: memberEmail
            },
            dataType: "text",
            success: function (result) {
                console.log("성공");
                console.log(result);
                if (result == "yes") {
                    emailResult.innerHTML = "좋아요.";
                    emailResult.style.color = "green";
                } else {
                    emailResult.innerHTML = "사용할수없습니다";
                    emailResult.style.color = "red";
                }

            },
            error: function () {
                console.log("실패")
            }

        })
    }










</script>
</html>
