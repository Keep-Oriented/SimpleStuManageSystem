<%--
  Created by IntelliJ IDEA.
  User: 67510
  Date: 2019/11/25
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>简易学生信息管理系统学生信息列表</title>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
    <link type="text/css" rel="stylesheet" href="css/a.css">
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
</head>
<body>
<h1 align="center" style="color: dodgerblue">简易学生信息管理系统学生信息</h1>
<center>
    <a href="index.jsp" style="color: #2e6da4;font-size: 20px">☛返 回 主 页</a>
    &emsp;&emsp;&emsp;
    <a href="insert.jsp" style="color: #2e6da4;font-size: 20px">☛添 加 学 生 信 息 记 录</a>
</center>
<br>
<center>
    <form action="BlurQueryServlet" method="post">
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
        <th width="16%">学号</th>
        <th width="16%">姓名</th>
        <th width="16%">性别</th>
        <th width="16%">年龄</th>
        <th width="16%">入学时间</th>
        <th width="16%">操作</th>
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
            <td>
                <a href="GetStudentServlet?id=${stu.id}" style="color: blue">更新</a>
                &emsp;&emsp;
                <a href="#" style="color: blue"
                   onclick="window.confirm('确认删除该记录?')?this.href='DeleteServlet?id=${stu.id}' : this.href='javascript:void()';">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
<script>
    var result = '<%=request.getParameter("delete")%>';
    if (result == 'true') {
        alert("学生信息记录删除成功!");
    } else if (result == 'false') {
        alert("学生信息记录删除失败!");
    }
</script>
</body>
</html>
