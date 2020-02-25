<%--
  Created by IntelliJ IDEA.
  User: 67510
  Date: 2019/12/10
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>模糊查询</title>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
    <link type="text/css" rel="stylesheet" href="css/a.css">
</head>
<body>
<h1 align="center" style="color: dodgerblue">查 询 结 果</h1>
<center>
    <a href="stu_index.jsp" style="color: #2e6da4;font-size: 20px">☛返 回 主 页</a>
</center>
<br>
<table width="80%" align="center" border="1" bgcolor="#f0f8ff" style="text-align: center;border-color: aqua">
    <tr>
        <th width="20%">学号</th>
        <th width="20%">姓名</th>
        <th width="20%">性别</th>
        <th width="20%">年龄</th>
        <th width="20%">入学时间</th>
    </tr>
    <c:forEach items="${queryList}" var="stu">
        <tr>
            <td>${stu.id}</td>
            <td>${stu.name}</td>
            <td>${stu.sex}</td>
            <td>${stu.age}</td>
            <td>${stu.enterDate}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
