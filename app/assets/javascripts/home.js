$(document).ready(function(){
	$("#update_profile").on('submit',function (e) {
		var currentpassword = $('#current_password').val();
		console.log(currentpassword);
		var password = $("#txtPassword").val();
		console.log(password);
		var confirmPassword = $("#textconforimpassword").val();
		console.log(confirmPassword);
		if (password != confirmPassword) {
			$("#passwordmsg").html("<div class='valid' style='color:red;margin-bottom: 20px;'>Passwords do not match</div>");
			return false;
		}
		else if (currentpassword.length == 0){
			$('#passwordmsg').html("<div class='valid' style='color:red;margin-bottom: 20px;'>Enter your current password</div>");
			return false;
		}
		else if(password.length ==0){
			$('#passwordmsg').html("<div class='valid' style='color:red;margin-bottom: 20px;'>Enter the New password</div>");
			return false;
		}
	});
})
