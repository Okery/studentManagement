
/**
 * 左侧点击事件栏
 */

$(document).ready(function(){
	$("#updatePassword").click(function(){
		var last = $("ol[class='breadcrumb'] li:last").text();
		if($.trim(last) == '系统管理员'){
			$(" <li class=\"breadcrumb-item active\">更新密码</li>")
			 .appendTo("ol[class='breadcrumb']");
		}else{
			$("ol[class='breadcrumb'] li:last").remove();
			$(" <li class=\"breadcrumb-item active\">更新密码</li>")
			 .appendTo("ol[class='breadcrumb']");
		}
		$.ajax({
			cache:false
		});
		$("div[id='change']").load("updatePassword_updateUI");
	});
	$("#setSecurityQuestion").click(function(){
		var last = $("ol[class='breadcrumb'] li:last").text();
		if($.trim(last) == '系统管理员'){
			$(" <li class=\"breadcrumb-item active\">设置密保</li>")
				 .appendTo("ol[class='breadcrumb']");
		}else{
			$("ol[class='breadcrumb'] li:last").remove();
			$(" <li class=\"breadcrumb-item active\">设置密保</li>")
			 .appendTo("ol[class='breadcrumb']");
		}
		$.ajax({
			cache:false
		});
		$("div[id='change']").load("securityUI");
	});
	$("#addExam").click(function(){
		var last = $("ol[class='breadcrumb'] li:last").text();
		if($.trim(last) == '系统管理员'){
			$(" <li class=\"breadcrumb-item active\">添加考试信息</li>")
			 .appendTo("ol[class='breadcrumb']");
		}else{
			$("ol[class='breadcrumb'] li:last").remove();
			$(" <li class=\"breadcrumb-item active\">添加考试信息</li>")
			 .appendTo("ol[class='breadcrumb']");
		}
		$.ajax({
			cache:false
		});
		$("div[id='change']").load("addExam");
	});
	$("#show").click(function(){
		var last = $("ol[class='breadcrumb'] li:last").text();
		if($.trim(last) == '系统管理员'){
			$(" <li class=\"breadcrumb-item active\">查询考试安排</li>")
			 .appendTo("ol[class='breadcrumb']");
		}else{
			$("ol[class='breadcrumb'] li:last").remove();
			$(" <li class=\"breadcrumb-item active\">查询考试安排</li>")
			 .appendTo("ol[class='breadcrumb']");
		}
		$.ajax({
			cache:false
		});
		$("div[id='change']").load("opration_findAllExamination");
	});
});