<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-27
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mamberMain.jsp</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>
<div class="container">
  <h2> ${sessionScope.loginEmail} 님 환영합니다.</h2>
    <h2>model값 : ${modelEmail}</h2>
    <a href="/update?id=${sessionScope.loginEmail}">정보수정하기</a>
    <button class="btn btn-warning" onclick="updateForm()">내정보수정하기</button>

  <button class="btn btn-danger" onclick="logout()">로그아웃</button>

    <a href="/">index.jsp</a>

</div>

</body>
<script>

  const updateForm = () => {
    location.href = "/update";
  }

  const logout = () => {
    location.href = "/logout";
  }

</script>
</html>
