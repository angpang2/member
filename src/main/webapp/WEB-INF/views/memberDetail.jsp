<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-27
  Time: 오후 1:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberDetail.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>

<h2>조회결과</h2>

<h4>memberDTO객체: ${member}</h4>
<h5>번호: ${member.id}</h5>
<h5>이름: ${member.memberName}</h5>
<h5>이메일: ${member.memberEmail}</h5>
<h5>비밀번호: ${member.memberPassword}</h5>
<h5>나이: ${member.memberAge}</h5>
<h5>전화번호: ${member.memberMobile}</h5>

세션에담긴 DTO : ${sessionScope.session}
세션에담긴 DTO에담긴 id값 : ${sessionScope.session.id}

<a href="/">홈으로</a>

</body>
</html>