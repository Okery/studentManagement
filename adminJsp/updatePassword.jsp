<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="<%=path %>/css/updatePassword.css" />
    		<!-- 引入脚本 -->
    	<script type="text/javascript" src="<%=path %>/js/jquery-3.3.1.min.js"></script>
    	 <script type="text/javascript" src="<%=path %>/js/stu_admin.js"></script>
    </head>
      
    <body>
    	<center>
    	<form action="updatePassword_updatePassword"  method="post" id="update">
    		<div class="center">
    			<table border="0">
    				<tr>
    					<td>旧 &nbsp; 密&nbsp;   码&nbsp;  * </td>
    					<td><input type="password" id="oldPassword" /></td>
    				</tr>
    				<tr>
    					<td>新&nbsp;&nbsp;  密&nbsp;	码&nbsp;  * </td>
    					<td><input type="password" id="newPassword"  name="password"/></td>
    				</tr>
    				<tr>
    					<td>确认新密码*</td>
    					<td><input type="password" id="confirmNewPassword" /></td>
    				</tr>
    			</table>
    			<button type="reset">取消</button>
    			<button type="button" id="submit">确认</button>
    		</div>
    		</form>
    	</center>
 
 	</body>
 	
</html>