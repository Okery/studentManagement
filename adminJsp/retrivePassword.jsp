<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
		<link rel="stylesheet" href="<%=path %>/css/retrivePassword.css" />
    	<script type="text/javascript" src="<%=path%>/js/jquery-3.3.1.min.js"></script>
    	<script type="text/javascript" src="<%=path%>/js/retrievePassword.js"></script>
    </head>
    
    <body>
    	<div class="top">
    		<p>安全中心</p>
    		<p class="tip">|找回密码</p>
    	</div>
    	
    	<div class="content_top">
    		<div class="order">
    			<p>1</p>
    			填写账号
    		</div>
    		
    		<div class="guide" id="guide">
    			
    		</div>
    		
    		<div class="order">
    			<p>2</p>
    			验证密保
    		</div>
    		
    		<div class="guide2" id="guide2">
    			
    		</div>
    		
    		<div class="order">
    			<p>3</p>
    			找回密码
    		</div>
    	</div>
    	
    	<div class="content_bottom">
    		<center>
    		<div class="inputUsername">
    			<table>
    				<tr>
    					<td>账号：</td>
    				</tr>
    				<tr>
    					<td><input type="text" name="userId" id="userId" /></td>
    				</tr>
    			</table>
    			<button id="input_username">确认</button>
    		</div>
    		
    		<div class="question">
    			<table>
    				<tr>
    					<td>选择密保问题并回答</td>
    				</tr>
    				<tr>
    					<td>
    						<select name="question" id="question">
    						</select>
    					</td>
    				</tr>
    				<tr>
    					<td>
    						<input type="text" placeholder="问题答案"  id="answer"/>
    					</td>
    				</tr>
    				<tr>
    					<td>
    						<button id="input_QA">确认</button>
    					</td>
    				</tr>
    			</table>
    		</div>
    		
    		<div class="success">
    			<table>
    				<tr>
    					<td>密码已经以邮件形式发送到您的邮箱！</td>
    				</tr>
    				<tr>
    					<td><a href="<%=path%>/login.jsp">返回登录</a> </td>
    				</tr>
    			</table>
    		</div>
    		
    		
    		</center>
    	</div>
    	
    	<footer>
    		Copyright © the school of software 2015 group DJB
    	</footer>
    	
 	</body>
</html>
