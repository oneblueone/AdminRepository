<%--
  Created by IntelliJ IDEA.
  User: 熊文桥
  Date: 2021/5/30
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
指定路径：
指定 base 标签
<head>
    <base href="<%=basePath%>">
    <title>注册学生</title>
</head>
<body>
<div align="center">

    <form action="student/addStudent.do" method="post">//没有斜杠开头，加base标签
        <table>
            <tr>
                <td>姓名：</td>
                <td><input type="text" name="name"></td>//如果将name成id是提交不了数据的
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input type="text" name="age"></td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><input type="submit" value="注册"></td>
            </tr>
        </table>
    </form>
    <a href="index.jsp">返回首页</a>
</div>

</body>
</html>
