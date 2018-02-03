<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

       <button onclick="ceshi001()">测试</button>

        <form action="toemail.html" method="post">
                             邮箱host：<input type="text" name="host"><br><br>
                             邮箱port：<input type="text" name="port"><br><br>
                             邮箱账户：<input type="text" name="emailname"><br><br>
                             邮箱密码：<input type="password" name="emailpassword"><br><br>
                             接收人：<input type="text" name="username"><br><br> 
                              邮件主题：<input type="text" name="title"><br><br>
                              邮件内容：<input type="text" name="context"><br> <br>
            <input type="submit" value="提交" >  <input type="reset" value="重置">               
        </form>
</body>
<script type="text/javascript" src="<%=path %>/static/js/jquery-3.1.1.js"></script>
<script type="text/javascript">
  function ceshi001(类型){
	  
	  $.ajax({
         url:"ceshi",
         type:"post",
         dataType:"json",
         success:function(data){
         var shijian=new Date(data.date).toLocaleString();
        	 alert(shijian);
         }
	  })	  
  };
  
  
</script>
</html>