
/**
 * 
 * 显示所有考试安排
 */

$(document).ready(function(){
	
	
	$(".detail").click(function(){
		var examId = $(this).parent().children().eq(0).val();
		var last = $("ol[class='breadcrumb'] li:last").text();
		if($.trim(last) == '系统管理员'){
			$(" <li class=\"breadcrumb-item active\">查询考试详情</li>")
			 .appendTo("ol[class='breadcrumb']");
		}else{
			$("ol[class='breadcrumb'] li:last").remove();
			$(" <li class=\"breadcrumb-item active\">查询考试详情</li>")
			 .appendTo("ol[class='breadcrumb']");
		}
		$("div[id='change']").load("opration_detial?examId="+examId);
	});
	$(".updateE").click(function(){
		var examId = $(this).parent().children().eq(0).val();
		var last = $("ol[class='breadcrumb'] li:last").text();
		if($.trim(last) == '系统管理员'){
			$(" <li class=\"breadcrumb-item active\">更新考试信息</li>")
			 .appendTo("ol[class='breadcrumb']");
		}else{
			$("ol[class='breadcrumb'] li:last").remove();
			$(" <li class=\"breadcrumb-item active\">更新考试信息</li>")
			 .appendTo("ol[class='breadcrumb']");
		}
		$("div[id='change']").load("opration_edit?examId="+examId);
	});
	$(".delete").click(function(){
		var examId = $(this).parent().children().eq(0).val();
		var that = $(this);
		$.ajax({
			url:"exam_delete",
			type:"post",
			data:{
				'examination.examId':examId
			},
			success:function(){
				alert("删除成功");
				that.parent().parent().remove();
				$("div[id='change']").load("opration_findAllExamination");
			},
			error:function(){
				alert("服务器错误");
			}
		});
	});
});