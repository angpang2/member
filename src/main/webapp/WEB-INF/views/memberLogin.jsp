<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-27
  Time: 오전 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberLogin</title>
</head>
<body>
<div class="container">
    <form action="/login" method="post">
        <input type="text" name="memberEmail" placeholder="이메일" class="form-control">
        <input type="text" name="memberPassword" placeholder="비밀번호" class="form-control">
        <input type="submit" value="로그인">

    </form>


</div>


</body>
</html>
