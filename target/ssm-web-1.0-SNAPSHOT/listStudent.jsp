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
          $("#return").click(function () {
            location.href="index.jsp"
          })
          //dom加载执行loadData;
          loadData();
          $("#btnLoader").click(function () {
            loadData() ;
          })
      })
        function loadData() {
            $.ajax({
                url: "student/queryStudent.do",
                type: "get",
                dataType: "json",
                success: function (data) {
                    //清除旧数据
                    $("#info").html("");
                    $.each(data, function (i, n) {
                        $("#info").append("<tr>")
                            .append("<td>" + n.id + "<td>")
                            .append("<td>" + n.age + "<td>")
                            .append("<td>" + n.name + "<td>")
                            .append("<tr>")
                    })
                }
            })
        }
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
      <input type="button" id="return" value="返回首页">
  </div>
</body>
</html>
