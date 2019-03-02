
/**
 * 管理员界面修改密码界面
 */

$(document).ready(function(){
	$("#oldPassword").focusout(function(){
		var password = $("#oldPassword").val();
		$.ajax({
			url:"comfirmPassword",
			data:{
				password:password
			},
			type:"post",
			success:function(data){
				if(data.confirm == 0){
					alert("旧密码不正确，请重新输入");
					$("#oldPassword").val("");
				}
			},
			error:function(){
				alert("出错了");
			}
		});
	});
	$("#submit").click(function(){
		var password = $("#newPassword").val();
		var confirm = $("#confirmNewPassword").val();
		var oldPassword = $("#oldPassword").val();
		if(password == ""||oldPassword == ""){
			alert("请输入密码");
		}else if(password == oldPassword){
			alert("新密码与旧密码不能相同");
		}else if(password != confirm){
			alert("两次密码不一致,请确认");
			$("#newPassword").val("");
			 $("#confirmNewPassword").val("");
			 $("#oldPassword").val("");
		}else {
			$.ajax({
				url:"updatePassword_updatePassword",
				data:{
					password:password
				},
				type:"post",
				success:function(data){
					window.location.replace("http://localhost:8080/StudentManagement");
				},
				error:function(){
					alert("出错了");
				}
			});
		}
	});
});