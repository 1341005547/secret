<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/21
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../../../static/jquery-3.1.1.js"></script>
</head>
<body>testAjax
<script type="text/javascript">

    $(function(){
        $.ajax({
            url:"testAjax",
            async:true,
            dateTpye: "json",
            success:function (date) {
                alert(date);
            }
        })
    });
</script>
</body>
</html>
