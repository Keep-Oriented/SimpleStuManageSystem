<%--
  Created by IntelliJ IDEA.
  User: 67510
  Date: 2019/12/9
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>简易学生信息管理系统主页</title>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
    <link type="text/css" rel="stylesheet" href="css/a.css">
</head>
<body>
<h1 align="center" style="color: dodgerblue">😃${username}同学您好, 简易学生信息管理系统登录成功!</h1>
<a href="password.html"><font style="position: relative;left: 76%;font-size: 20px;color: #2e6da4">☛修 改 密 码</font></a>
<a href="login.html"><font style="position: relative;left: 80%;font-size: 20px;color: #2e6da4">☛退 出 登 录</font></a>
<br>
<hr size="4" color="darkgray">
<br>
<a href="StuListServlet">
    <h2 align="center" style="color: dodgerblue">☛点 击 查 看 全 部 学 生 信 息</h2>
</a>
<br>
<br>
<a href="StuListPageServlet?currentPage=1">
    <h2 align="center" style="color: dodgerblue">☛点 击 分 页 查 看 学 生 信 息</h2>
</a>
</body>
</html>
