<%--
  Created by IntelliJ IDEA.
  User: 67510
  Date: 2019/12/9
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>简易学生信息管理系统学生信息(分页显示)</title>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png">
    <link type="text/css" rel="stylesheet" href="css/a.css">
</head>
<body>
<h1 align="center" style="color:dodgerblue;">简易学生信息管理系统学生信息(分页显示)</h1>
<center>
    <a href="stu_index.jsp" style="color: #2e6da4;font-size: 20px">☛返 回 主 页</a>
</center>
<br>
<center>
    <form action="StuBlurQueryServlet" method="post">
        按姓名查询:<input type="text" name="name">
        &emsp;
        按性别查询:
        <select name="sex">
            <option value="" selected>---请选择---</option>
            <option value="男">男</option>
            <option value="女">女</option>
        </select>
        &emsp;
        <input type="submit" value="查询">
    </form>
</center>
<table width="80%" align="center" border="1" bgcolor="#f0f8ff" style="text-align: center;border-color: aqua">
    <tr>
        <th width="20%">学号</th>
        <th width="20%">姓名</th>
        <th width="20%">性别</th>
        <th width="20%">年龄</th>
        <th width="20%">入学时间</th>
    </tr>
    <c:forEach items="${pageBean.currentPageList}" var="stu">
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
    <tr>
        <td colspan="5">
            总记录数:${pageBean.totalRecord}
            &emsp;
            当前页面记录数:${pageBean.currentPageRecord}
            &emsp;
            第${pageBean.currentPage} / ${pageBean.totalPage} 页
            &emsp;
            <a href="StuListPageServlet?currentPage=1" style="color: blue">首页</a>
            &emsp;
            <c:if test="${pageBean.currentPage != 1}">
                <a href="StuListPageServlet?currentPage=${pageBean.currentPage-1}" style="color: blue">上一页</a>&emsp;
            </c:if>
            <c:forEach begin="1" end="${pageBean.totalPage}" var="i">
                <c:if test="${pageBean.currentPage == i}">
                    ${i}&emsp;
                </c:if>
                <c:if test="${pageBean.currentPage != i}">
                    <a href="StuListPageServlet?currentPage=${i}" style="color: blue">${i}</a>&emsp;
                </c:if>
            </c:forEach>
            <c:if test="${pageBean.currentPage != pageBean.totalPage}">
                <a href="StuListPageServlet?currentPage=${pageBean.currentPage+1}" style="color: blue">下一页</a>&emsp;
            </c:if>
            <a href="StuListPageServlet?currentPage=${pageBean.totalPage}" style="color: blue">尾页</a>
        </td>
    </tr>
</table>
</body>
</html>