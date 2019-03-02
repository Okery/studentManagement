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
        <link rel="stylesheet" href="<%=path %>/css/security.css" />
        <script type="text/javascript" src="<%=path%>/js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="<%=path%>/js/stu_security.js"></script>
    </head>
    <body>
    	<center>
    	<div id="security_question">
    		<p>
    			为了避免遗忘，请填写真实信息，这将帮助您以后通过回答问题快速找回密码
    		</p>
	    	<form>
	    		<table>
	    			<tr>
	    				<td>
	    					问题一：
	    				</td>
	    				<td>
	    					<select id="question1">
	    						<option value="您的工号是">您的工号是</option>
	    						<option value="您的小学是">您的小学是</option>
	    						<option value="您的大学是">您的大学是</option>
	    						<option value="您的手机号是">您的手机号是</option>
	    					</select>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					答案：
	    				</td>
	    				<td>
	    					<input type="text" id="answer1"/>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					问题二：
	    				</td>
	    				<td>
	    					<select id="question2">
	    						<option value="您的工号是">您的工号是</option>
	    						<option value="您的小学是">您的小学是</option>
	    						<option value="您的大学是">您的大学是</option>
	    						<option value="您的手机号是">您的手机号是</option>
	    					</select>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					答案：
	    				</td>
	    				<td>
	    					<input type="text" id="answer2"/>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					问题三：
	    				</td>
	    				<td>
	    					<select id="question3">
	    						<option value="您的工号是">您的工号是</option>
	    						<option value="您的小学是">您的小学是</option>
	    						<option value="您的大学是">您的大学是</option>
	    						<option value="您的手机号是">您的手机号是</option>
	    					</select>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					答案：
	    				</td>
	    				<td>
	    					<input type="text" id="answer3"/>
	    				</td>
	    			</tr>
	    		</table>
	    			<input type="button" value="提交" id="submit">
	    	</form>
	    	</div>
	    	<div style="display: none;" id="tip">
	    		<p>您已经进行过密保设置</p>
	    	</div>
	    
    	</center>
 	</body>
</html>
