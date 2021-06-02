<%--
  Created by IntelliJ IDEA.
  User: 熊文桥
  Date: 2021/5/30
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>功能入口</title>
</head>
<body>
<div align="center">
    <p>SSM整合</p>
    <img id="girl.jpg" src="image/girl.jpg" alt="女孩图片" height="86" width="138">
    <table >
        <tr>
            <td><a href="addStudent.jsp" >注册学生</a></td>
        </tr>
        <tr>
            <td><a href="listStudent.jsp"> 查看学生</a></td>
        </tr>
    </table>

</div>


</body>
</html>
