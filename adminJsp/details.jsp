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
<title>Insert title here</title>
<script type="text/javascript" src="<%=path %>/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/detail.js"></script>
</head>
<body>
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">考试详细信息</div>
      <div class="card-body">
        <s:form action="subjects_save"  method="post" theme="simple" id="form">
        
          <div class="form-group">
          <div class="form-row">
              <div class="col-md-6">
              		<label >考试科目</label>
              </div>
              </div>	
          </div>
          
          <div class="form-group">
          <div class="form-row">
              <div class="col-md-6">
              		<label >课程编号</label>
              		<input type="text" class="form-control"  disabled="disabled" value="<s:property  value="examination.subId"/> "/>
              </div>
              <div class="col-md-6">
              		<label >课程名称</label>
              		<input class="form-control" name="sub_name" id="sub_name"  value="<s:property  value="examination.subName"/>"  disabled="disabled"/>
              </div>
              </div>
          </div>
          
          <div class="form-group">
          		<div class="form-row">
          			<div class="col-md-6">
          				<label>学分</label>
          				<input class="form-control" name="sub_credit" id="sub_credit" value="<s:property  value="examination.subCredit"/>" disabled="disabled"/>
          			</div>
          			<div class="col-md-6">
          				<label>任课教师 </label>
          				<input class="form-control" name="sub_teacher_name" id="sub_teacher_name" value="<s:property  value="examination.subTeacherName"/>" disabled="disabled"/>
          			</div>
          		</div>
          </div>
          
          <div class="form-group">
          		<div class="form-row">
          			<div class="col-md">
          			 	<label>考试信息</label>
          			</div>
          		</div>
          </div>
          
          <div class="form-group">
			<div class="form-row">
              <div class="col-md-6">
                <label>考试时间</label>
                <input type="date" class="form-control" name="exam_time" id="exam_time" value="<s:property  value="examination.examTime"/>" disabled="disabled"/>
              </div>
              <div class="col-md-6">
                <label>考试地点</label>
                <input class="form-control"  name="exam_site" id="exam_site" value="<s:property  value="examination.examSite"/>" disabled="disabled"/>
              </div>
            </div>
            </div>
        
        	<div class="form-group">
			<div class="form-row">
              <div class="col-md-6">
                <label>监考信息</label>
              </div>
            </div>
            </div>
            
            <div class="form-group">
			<div class="form-row">
              <div class="col-md-6">
                <label>监考教师编号</label>
                <input class="form-control" name="exam_tea_id" id="exam_tea_id" value="<s:property  value="examination.examTeaId"/>" disabled="disabled"/>
              </div>
              <div class="col-md-6">
                <label>监考教师姓名</label>
                <input  id="exam_tea_name"  class="form-control"  name="exam_tea_name" value="<s:property  value="examination.examTeaName"/>" disabled="disabled"/>
              </div>
            </div>
            </div>
            
            <div class="form-group">
			<div class="form-row">
              <div class="col-md-6">
                <label>考试形式</label>
              </div>
            </div>
            </div>
            
            <div class="form-group">
			<div class="form-row">
              <div class="col-md-6">
                <label>考试形式</label>
               	 <input class="form-control"  value="<s:property  value="examination.examForm"/>"  disabled="disabled"/>
              </div>
            </div>
            </div>
            
             <div class="form-group">
			<div class="form-row">
              <div class="col-md-6">
                <label>对应学期</label>
              </div>
            </div>
            </div>
            
            <div class="form-group">
			<div class="form-row">
              <div class="col-md-6">
                <label>对应学期</label>
                <input class="form-control" name="exam_term_year" id="exam_term_year" value="<s:property  value="examination.subId"/>"  disabled="disabled"/>
              </div>
            </div>
            </div>
          
        </s:form>
      </div>
    </div>
  </div>

</body>
</html>
