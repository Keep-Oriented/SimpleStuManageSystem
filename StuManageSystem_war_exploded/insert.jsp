<%--
  Created by IntelliJ IDEA.
  User: 67510
  Date: 2019/11/12
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加记录页面</title>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
    <link type="text/css" rel="stylesheet" href="css/a.css">
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script>
        function insertStu() {
            //alert("添加按钮被点击!");
            var id = $("#id").val();
            var name = $("#name").val();
            //var sex = $("#sex").val();
            //获取单选按钮的值
            var sex = $('input[name="sex"]:checked').val();
            var age = $("#age").val();
            var enterDate = $("#enterDate").val();
            if (id == '' || name == '' || sex == '' || age == '' || enterDate == '') {
                alert("请完整填写学生信息后提交!");
            } else {
                $.post("InsertServlet", {
                    id: id,
                    name: name,
                    sex: sex,
                    age: age,
                    enterDate: enterDate
                }, function (data, status) {
                    //alert(data);
                    if (data == '1') {
                        alert("学生信息记录添加成功!");
                        window.location.replace("ListServlet");
                    } else if (data == '0') {
                        alert("学生信息记录添加失败!");
                        window.location.replace("insert.jsp");
                    } else {
                        alert("学生信息记录格式错误!");
                        window.location.replace("insert.jsp");
                    }
                });
            }
        }
    </script>
</head>
<body>
<h1 align="center" style="color: dodgerblue">添 加 记 录</h1>
<center>
    <a href="ListServlet" style="color: #2e6da4;font-size: 20px">☛返 回 学 生 信 息 主 页</a>
</center>
<br>
<form action="#" method="post">
    <table align="center" width="390px" border="1" bgcolor="#f0f8ff" style="border-color: aqua">
        <tr>
            <td align="center">
                <font style="font-size: 18px">学号:</font>
            </td>
            <td>
                <input type="text" name="id" id="id" style="width: 300px;height:28px;background-color: #f0f8ff"
                       required>
            </td>
        </tr>
        <tr>
            <td align="center">
                <font style="font-size: 18px">姓名:</font>
            </td>
            <td>
                <input type="text" name="name" id="name" style="width: 300px;height:28px;background-color: #f0f8ff"
                       required>
            </td>
        </tr>
        <tr>
            <td align="center">
                <font style="font-size: 18px">性别:</font>
            </td>
            <td>
                <input type="radio" name="sex" value="男" style="width: 50px;height:15px;" required>
                <font style="font-size: 18px">男</font>
                <input type="radio" name="sex" value="女" style="width: 50px;height:15px;" required>
                <font style="font-size: 18px">女</font>
            </td>
        </tr>
        <tr>
            <td align="center">
                <font style="font-size: 18px">年龄:</font>
            </td>
            <td>
                <input type="number" name="age" id="age" style="width: 300px;height:28px;background-color: #f0f8ff"
                       required>
            </td>
        </tr>
        <tr>
            <td align="center">
                <font style="font-size: 18px">入学时间:</font>
            </td>
            <td>
                <input type="date" name="enterDate" id="enterDate"
                       style="width: 300px;height:28px;background-color: #f0f8ff"
                       required>
            </td>
        </tr>
        <tr>
            <td><input type="button" style="width: 90px" onclick="insertStu()" value="提交"></td>
            <td><input type="reset" style="width: 90px" value="重置"></td>
        </tr>
    </table>
</form>
</body>
</html>
