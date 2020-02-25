<%--
  Created by IntelliJ IDEA.
  User: 67510
  Date: 2019/11/12
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生信息记录更新页面</title>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
    <link type="text/css" rel="stylesheet" href="css/a.css">
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script>
        function updateStu() {
            //alert("更新按钮被点击!");
            var id = $("#id").val();
            var name = $("#name").val();
            //获取单选按钮的值
            var sex = $('input[name="sex"]:checked').val();
            var age = $("#age").val();
            var enterDate = $("#enterDate").val();
            if (id == '' || name == '' || sex == '' || age == '' || enterDate == '') {
                alert("请完整填写学生信息后提交!");
            } else {
                $.post("UpdateServlet", {
                    id: id,
                    name: name,
                    sex: sex,
                    age: age,
                    enterDate: enterDate
                }, function (data, status) {
                    //alert(data);
                    if (data == '1') {
                        alert("学生信息记录更新成功!");
                        window.location.replace("ListServlet");
                    } else {
                        alert("学生信息记录更新失败,请重新输入!");
                        window.location.replace("GetStudentServlet?id=${stu.id}");
                    }
                });
            }
        }
    </script>
</head>
<body>
<h1 align="center" style="color: dodgerblue">更 新 学 生 信 息</h1>
<center>
    <a href="ListServlet" style="color: #2e6da4;font-size: 20px">☛返 回 学 生 信 息 主 页</a>
</center>
<br>
<form action="#" method="post">
    <%--    隐含的提交学生ID--%>
    <input type="hidden" name="id" id="id" value="${stu.id}">
    <table align="center" width="390px" border="1" bgcolor="#f0f8ff" style="border-color: aqua">
        <tr>
            <td align="center">
                <font style="font-size: 18px">姓名:</font>
            </td>
            <td width="80%">
                <input type="text" name="name" id="name" value="${stu.name}"
                       style="width: 300px;height:28px; background-color: #f0f8ff" required>
            </td>
        </tr>
        <tr>
            <td align="center">
                <font style="font-size: 18px">性别:</font>
            </td>
            <td>
                <%--                根据性别自动选中单选框--%>
                <input type="radio" name="sex" value="男"
                       style="width: 50px;height:15px;" required <c:if test="${stu.sex == '男'}">checked</c:if>>
                <font style="font-size: 18px">男</font>
                <input type="radio" name="sex" value="女"
                       style="width: 50px;height:15px;" required <c:if test="${stu.sex == '女'}">checked</c:if>>
                <font style="font-size: 18px">女</font>
            </td>
        </tr>
        <tr>
            <td align="center">
                <font style="font-size: 18px">年龄:</font>
            </td>
            <td>
                <input type="number" name="age" id="age" value="${stu.age}"
                       style="width: 300px;height:28px;background-color: #f0f8ff" required>
            </td>
        </tr>
        <tr>
            <td align="center">
                <font style="font-size: 18px">入学时间:</font>
            </td>
            <td>
                <input type="date" name="enterDate" id="enterDate" value="${stu.enterDate}"
                       style="width: 300px;height:28px;background-color: #f0f8ff" required>
            </td>
        </tr>
        <tr>
            <td><input type="button" style="width: 90px" onclick="updateStu()" value="提交"></td>
            <td><input type="reset" style="width: 90px" value="重置"></td>
        </tr>
    </table>
</form>
</body>
</html>
