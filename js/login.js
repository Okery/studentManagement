$(document).ready(function(){
	
	$("#login").click(function(){
		var type = $("#type").val();
		var username = $("#exampleInputEmail1").val();
		var password = $("#exampleInputPassword1").val();
		if(type == 0){
			$("#loginForm").submit();
		}else if(type == 2){
			$.ajax({
				url:"tea_login.action",
				type:"post",
				data:{
					'loginBean.username':username,
					'password':password
				},
				success:function(data){
					if(data.successOrNot == 1){
						window.location.href='http://localhost:8080/counselor';
					}else{
						alert("用户名或密码错误");
					}
				},
				error:function(data){
					alert("服务器错误");
				}
			});
		}else{
			$.ajax({
				url:"admin_login.action",
				type:"post",
				data:{
					'loginBean.username':username,
					'password':password,
				},
				success:function(data){
					if(data.successOrNot == 1){
						window.location.href='http://localhost:8080/group/Main.jsp';
					}else{
						alert("用户名或密码错误");
					}
				},
				error:function(data){
					alert("服务器错误");
				}
			});
		}
	});
})