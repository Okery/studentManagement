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
<script type="text/javascript" src="<%=path %>/js/updateExamination.js"></script>
</head>
<body>
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">更新考试信息</div>
      <div class="card-body">
        <s:form action="subjects_save"  method="post" theme="simple" id="form">
        
          <div class="form-group">
          <div class="form-row">
              <div class="col-md-6">
              		<label >考试科目</label>
              </div>
              </div>	
          </div>
          <input type="text" style="display:none" value="<s:property value="examination.examId"/>"  id="examId"/>
          <div class="form-group">
          <div class="form-row">
              <div class="col-md-6">
              		<label >课程编号</label>
              		<input type="text" class="form-control" name="sub_num" id="sub_id"  value="<s:property value="examination.subId"/>"/>
              </div>
              <div class="col-md-6">
              		<label >课程名称</label>
              		<input class="form-control" name="sub_name" id="sub_name" value="<s:property value="examination.subName"/>"/>
              </div>
              </div>
          </div>
          
          <div class="form-group">
          		<div class="form-row">
          			<div class="col-md-6">
          				<label>学分</label>
          				<input class="form-control" name="sub_credit" id="sub_credit" value="<s:property value="examination.subCredit"/>"/>
          			</div>
          			<div class="col-md-6">
          				<label>任课教师 </label>
          				<input class="form-control" name="sub_teacher_name" id="sub_teacher_name" value="<s:property value="examination.subTeacherName"/>"/>
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
                <input type="date" class="form-control" name="exam_time" id="exam_time" value="<s:property value="examination.examTime"/>"/>
              </div>
              <div class="col-md-6">
                <label>考试地点</label>
                <input class="form-control"  name="exam_site" id="exam_site"  value="<s:property value="examination.examSite"/>"/>
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
                <input class="form-control" name="exam_tea_id" id="exam_tea_id" value="<s:property value="examination.examTeaId"/>"/>
              </div>
              <div class="col-md-6">
                <label>监考教师姓名</label>
                <input  id="exam_tea_name"  class="form-control"  name="exam_tea_name" value="<s:property value="examination.examTeaName"/>"/>
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
          		<select class="form-control" name="sub_form" id="sub_form">
          			<option selected="selected"><s:property value="examination.examForm"/> </option>
          			<option>闭卷</option>
          			<option>开卷</option>
          		</select>
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
                <label>学年</label>
                <input class="form-control" name="exam_term_year" id="exam_term_year"  value="<s:property value="termYear"/>"/>
              </div>
              <div class="col-md-6">
                <label>学期</label>
               	<select class="form-control" name="exam_term_term" id="exam_term_term">
          			<option selected="selected"><s:property value="term"/> </option>
          			<option value="第一学期" >第一学期</option>
          			<option value="第二学期">第二学期</option>
          		</select>
              </div>
            </div>
            </div>
            
            
			<input  class="btn btn-primary btn-block" type="button" value="修改" id="add"/>
          
        </s:form>
      </div>
    </div>
  </div>

</body>
</html>