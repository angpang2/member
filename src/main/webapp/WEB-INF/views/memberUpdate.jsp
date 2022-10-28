<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-27
  Time: 오후 3:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>memberUpdate.jsp</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>

<div class="container" id="update-form">
<form action="/update" method="post" name="up">
 Id: <input type="text" name="id" value="${member.id}" class="form-control" readonly>
 email: <input type="text" name="memberEmail" value="${member.memberEmail}" class="form-control" readonly>
  name:<input type="text" name="memberName" value="${member.memberName}" class="form-control">
  password:<input type="text" name="memberPassword" class="form-control">
  age:<input type="text" name="memberAge" value="${member.memberAge}" class="form-control">
  <input type="button" value="수정" class="btn btn-primary" onclick="update()">

</form>


</div>


</body>
<script>
const update = () => {
  const passwordDB = '${member.memberPassword}'; //DB에서 가져온 비밀번호
    //사용자가 input태그에 입력한 비밀번호와 디비에서 가져온 비밀번호가 일치하면 수정 요청을 보내고
    //일치하지 않으면 alert으로 비밀번호가 일치하지 않습니다. 출력
    if(document.up.memberPassword.value!=passwordDB) {
        alert("비밀번호가 일치하지 않습니다.")
    }else {
        document.up.submit();
    }
}



</script>

</html>