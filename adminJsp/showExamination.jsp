<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showExamination.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
	<script type="text/javascript" src="<%=path %>/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/showExamination.js"></script>
	<style type="text/css">
		a:hover{
			cursor: pointer;	
		}
	</style>
  </head>
  
  <body>
    <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> 所有考试</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
	                  <th>课程名</th>
	                  <th>考试时间</th>
	                  <th>考试地点</th>
	                  <th>任课教师</th>
	                  <th>考试形式</th>
	                  <th>对应学期</th>
	                 <th>操作</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
	                   <th>课程名</th>
	                  <th>考试时间</th>
	                  <th>考试地点</th>
	                  <th>任课教师</th>
	                  <th>考试形式</th>
	                  <th>对应学期</th>
	                 	<th>操作</th>
                </tr>
              </tfoot>
              <tbody>
              <s:iterator value="examinations" var="examination">
              	<tr>
                  <td><s:property value="#examination.subName"/></td>
                  <td><s:property value="#examination.examTime"/></td>
                  <td><s:property value="#examination.examSite"/></td>
                  <td><s:property value="#examination.subTeacherName"/></td>
                  <td><s:property value="#examination.examForm"/></td>
                  <td><s:property value="#examination.examTerm"/></td>
                  <td>
                  	 <input type="text" style="display:none" value="<s:property value="#examination.examId"/>">
                  	<a class="detail">详情</a> 
                  	<a class="delete">删除</a>
                  	<a class="updateE">更新</a>
                  </td>
                </tr>
              </s:iterator>
              </tbody>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">查询框内可以填写任意字段的值进行查询</div>
      </div>
    <!-- Bootstrap core JavaScript-->
    <script src="<%=path %>/vendor/jquery/jquery.min.js"></script>
    <script src="<%=path %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
  
    <!-- Page level plugin JavaScript-->

    <script src="<%=path %>/vendor/datatables/jquery.dataTables.js"></script>
    <script src="<%=path %>/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
 
    <!-- Custom scripts for this page-->
    <script src="<%=path %>/js/sb-admin-datatables.min.js"></script>

  </body>
</html>
