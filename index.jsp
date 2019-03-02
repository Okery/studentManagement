<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
   	<center>
   		<s:form action=""  method="post">
   				<table border="0">
   					<tr>
   						<td>用户名：</td>
   						<td><input name="username" type="text"> </td>
   					</tr>
   					<tr>
   						<td>密码：</td>
   						<td><input name="password" type="password"> </td>
   					</tr>
   					<tr>
   						<td>登录身份：</td>
   						<td>
   							<select name="type">
   								<option value="0">管理员</option>
   								<option value="1">教师</option>
   								<option value="2">学生</option>
   							</select>
   						</td>
   					</tr>
   					<tr>
   						<td><input type="submit" value="登录"></td>
   						<td><input type="reset" value="重置"> </td>
   					</tr>
   				</table>
   		</s:form>
   	</center>
  </body>
</html>
