<%--
  Created by IntelliJ IDEA.
  User: 67510
  Date: 2019/12/9
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>简易学生信息管理系统学生信息</title>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
    <link type="text/css" rel="stylesheet" href="css/a.css">
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
</head>
<body>
<h1 align="center" style="color: dodgerblue">简易学生信息管理系统学生信息</h1>
<center>
    <a href="stu_index.jsp" style="color: #2e6da4;font-size: 20px">☛返 回 主 页</a>
</center>
<br>
<center>
    <form action="StuBlurQueryServlet" method="post">
        <font style="font-size: 18px">按姓名查询:</font><input type="text" name="name">&emsp;
        <font style="font-size: 18px">按性别查询: </font>
        <select name="sex" style="width: 120px">
            <option value="" selected>- - -请选择- - -</option>
            <option value="男">男</option>
            <option value="女">女</option>
        </select>
        &emsp;
        <input type="submit" value="查询">
    </form>
    <br>
</center>
<table width="80%" align="center" border="1" bgcolor="#f0f8ff" style="text-align: center;border-color: aqua">
    <tr>
        <th width="20%">学号</th>
        <th width="20%">姓名</th>
        <th width="20%">性别</th>
        <th width="20%">年龄</th>
        <th width="20%">入学时间</th>
    </tr>
    <c:forEach items="${list}" var="stu">
        <tr>
            <td>
                    ${stu.id}
            </td>
            <td>
                    ${stu.name}
            </td>
            <td>
                    ${stu.sex}
            </td>
            <td>
                    ${stu.age}
            </td>
            <td>
                    ${stu.enterDate}
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>