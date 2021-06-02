<%--
  Created by IntelliJ IDEA.
  User: 熊文桥
  Date: 2021/5/30
  Time: 13:06
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
    <title>查询学生ajax</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
      $(function () {
          $("#btnLoader").click(function () {
                 $.ajax({
                     url:"student/queryStudent",
                     type:"get",
                     dataType:"json",
                     success:function (data) {
                        $.each(data,function (i,n) {
                       alert(n.name+n.id+n.age)
                        })
                     }
                 })
          })
      })
    </script>
</head>
<body>
  <div align="center">
      <table>
          <thead>
          <tr>
              <td>学号</td>
              <td>姓名</td>
              <td>年龄</td>
          </tr>
          </thead>
          <tbody id="info">

          </tbody>
      </table>
      <input type="button" id="btnLoader" value="查询数据">
  </div>
</body>
</html>
