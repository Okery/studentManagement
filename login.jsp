<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>用户登录</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark" background="https://picsum.photos/1400/800?blur">

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">
      			Login
      </div>
      <div class="card-body">
        <form action="login_loginTypeConfirm.action" method="post" id="loginForm">
          <div class="form-group">
            <label for="exampleInputEmail1">Enter username</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="Enter Username" name="username">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input class="form-control" id="exampleInputPassword1" type="password" placeholder="Password" name="password">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">身份</label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <select style="width: 100px" name="type" id="type">
            	<option value="0">教务</option>
            	<option value="1">管理员</option>
            	<option value="2">教师</option>
            </select>
          </div>
          <a class="btn btn-primary btn-block"  onclick="login()" id="login">Login</a>
        </form>
        <div class="text-center">
          <a class="d-block small" href="adminJsp/retrivePassword.jsp">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  <br />
  <center>
  		<s:actionerror cssStyle="list-style-type:none; color:red;font-size:25px"/>
  </center>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="<%=path %>/js/login.js"></script>
  <script type="text/javascript">
	function login(){
		var username = document.getElementById("exampleInputEmail1").value;
		var password = document.getElementById("exampleInputPassword1").value;
		if(username != "" && password != ""){
			document.getElementById("login").submit();
		}else{
			alert("用户名或密码不能为空");	
		}
	}
</script>
</body>


</html>
