<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-27
  Time: 오전 8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>
<a href="/save" type="text">회원가입</a> <br>
<a href="/login" type="text">로그인</a><br>
<a href="/members" type="text">회원목록조회</a>
<button class="btn btn-primary" onclick="saveFn()">회원가입</button>
<button class="btn btn-danger" onclick="loginFn()">로그인</button>
<button class="btn btn-dark" onclick="listFn()">목록</button>

</body>

<script>
    const saveFn=()=>{
        location.href = "/save";
    }
    const loginFn=()=>{
        location.href = "/login"
    }
    const listFn=()=>{
        location.href = "/members"
    }


</script>


</html>
