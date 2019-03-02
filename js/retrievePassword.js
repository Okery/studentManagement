/**
 * 找回密码js
 */

$(document).ready(function(){
	
	
	$("#input_username").click(function(){
		var userId = $("#userId").val();
		if($.trim(userId) == ""){
			alert("请输入账号");
		}else{
			$.ajax({
				url:"../retrieve_retrivePassword",
				type:"post",
				data:{
					userId:userId
				},
				success:function(data){
					if(data.securities == ""){
						alert("此帐号没有设置密保！");
					}else{
						$("div[class='inputUsername']").hide();
						$("#guide").css("background","blue");
						$("#guide2").css("background","linear-gradient(to right, blue, #00EEEE)");
						$("div[class='question']").show();
						for(var i =0;i<data.securities.length;i++){
							$("#question").append("<option>"+data.securities[i].secQuestion+"</option>");
						}
					}
				},
				error:function(){
					alert("服务器错误，稍后再试");
				}
			});
		}
	});
	
	$("#input_QA").click(function(){
		var answer = $("#answer").val();
		var question =$.trim( $("#question").val());
		if($.trim(answer) == ""){
			alert("请输入答案");
		}else{
			$.ajax({
				url:"../retrieve_passPassword",
				type:"post",
				data:{
					question:question,
					answer:answer
				},
				success:function(data){
					var passOrNot = data.passOrNot;
					if(passOrNot == 1){
						$("#guide").css("background","blue");
						$("#guide2").css("background","blue");
						$("div[class='inputUsername']").hide();
						$("div[class='question']").hide();
						$("div[class='success']").show();
					}else{
						alert("验证错误，请重试");
					}
				}
			});
		}
	});
});