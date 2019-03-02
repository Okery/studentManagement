/**
 * 设置密保界面事件
 */

$(document).ready(function(){
	$.ajax({
		url:"security_exitSecurityOrNot",
		type:"post",
		success:function(data){
			if(data.exitSecurityOrNot == 1){
				$("#security_question").hide();
				$("#tip").show();
			}
		},
		error:function(){
			alert("服务器错误");
		}
	});
	$("#submit").click(function(){
		var question1 = $("#question1").val();
		var answer1 = $("#answer1").val();
		var question2 = $("#question2").val();
		var answer2 = $("#answer2").val();
		var question3 = $("#question3").val();
		var answer3 = $("#answer3").val();
		if($.trim(answer1) =="" || $.trim(answer2) ==""||$.trim(answer3) ==""){
			alert("输入不能有空");
		}else if(question1 == question2 ||question1 == question3 ||question2 == question3){
			alert("不能多次使用同一个问题");
		}else{
			$.ajax({
				url:"security_saveSecurity",
				data:{
					question1:question1,
					answer1:answer1,
					question2:question2,
					answer2:answer2,
					question3:question3,
					answer3:answer3,
				},
				type:"post",
				success:function(data){
					alert("添加成功");
					$("#security_question").hide();
					$("#tip").show();
				},
				error:function(){
					alert("服务器出错了，请稍后再试");
				}
			});
		}
	});
});