
/*
 * 添加考试信息js
 * */
$(document).ready(function(){
	
	
	//自动填充课程信息
	$("#sub_id").focusout(function(){
		var sub_id = $("#sub_id").val();
		if($.trim(sub_id) != null){
			$.ajax({
				url:"exam_findSubById",
				type:"post",
				data:{
					sub_id:sub_id
				},
				success:function(data){
					if(data.subject == null){
						alert("课程号不存在！");
						$("#sub_id").val("");
					}else{
						$("#sub_name").val(data.subject.subName);
						$("#sub_credit").val(data.subject.subCredit);
						$("#sub_teacher_name").val(data.subject.teacherTeaName);
					}
				},
				error:function(){
//					alert("服务器错误，稍后再试");
				}
			});
		}
	});
	
	//自动填充监考教师信息
	$("#exam_tea_id").focusout(function(){
		var tea_id = $("#exam_tea_id").val();

		if($.trim(tea_id) != null){
			$.ajax({
				url:"exam_findTeaById",
				type:"post",
				data:{
					tea_id:tea_id
				},
				success:function(data){
					if(data.teacher == null){
						alert("教师编号不存在");
						$("#exam_tea_id").val("");
					}else{
						$("#exam_tea_name").val(data.teacher.teaName);
					}
				},
				error:function(){
					alert("错误");
				}
			});
		}
	});

	$("#add").click(function(){
		var examTime = $("#exam_time").val();
		var examSite = $("#exam_site").val();
		var examTeaId = $("#exam_tea_id").val();
		var examTeaName = $("#exam_tea_name").val();
		var subId = $("#sub_id").val();
		var subName = $("#sub_name").val();
		var subCredit = $("#sub_credit").val();
		var subTeacherName = $("#sub_teacher_name").val();
		var examForm = $("#sub_form").val();
		var examTerm = $("#exam_term_year").val()+$("#exam_term_term").val();

		if($.trim(subId) == "" || $.trim(examSite) == "" || $.trim(examTime) == "" || $.trim(examTeaId) == ""){
			alert("考试信息不完整");
		}else{
			$.ajax({
				url:"exam_exitOrNot",
				type:"post",
				data:{
					'examination.examTime':examTime,
					'examination.examSite':examSite
				},
				success:function(data){
					if(data.examinationExitOrNot == 1){
						alert("该考试安排已存在或与其他考试的时间、地点有冲突！");
					}else{
						$.ajax({
							url:"exam_save",
							type:"post",
							data:{
								'examination.examTime':examTime,
								'examination.examSite':examSite,
								'examination.examTeaId':examTeaId,
								'examination.examTeaName':examTeaName,
								'examination.subId':subId,
								'examination.subName':subName,
								'examination.subCredit':subCredit,
								'examination.subTeacherName':subTeacherName,
								'examination.examForm':examForm,
								'examination.examTerm':examTerm,
							},
							success:function(){
								alert("添加成功");
							},
							error:function(){
								alert("请重试");
							}
						});
					}
				},
				error:function(){
					alert("出错");
				}
			});
		}
	})
	
});