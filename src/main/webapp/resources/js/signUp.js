// 아이디 중복체크
$("#idCheckBtn").click(function() {
	var id = $("#id").val();

	$.ajax({
		url : "/member/idCheck",
		type : "get",
		data : {
			"id" : id
		},
		success : function(data) {
			console.log(data);
			if (data == 0) {
				$("#idResult").text("사용가능한 아이디 입니다.");
				$("#idResult").css("color", "#1e70bf");
			} else {
				$("#idResult").text("중복된 아이디 입니다.");
				$("#idResult").css("color", "red");
			}
		},
		error : function(data) {
			alert("서버 에러");
		}
	})
})


// 비밀번호 일치여부
$("input").keyup(function() {
	var password1 = $("#password1").val();
	var password2 = $("#password2").val();
	
	if(password1 != '' && password2 != '') {
		if(password1 == password2) {
			$("#passwordResult").text("비밀번호가 일치합니다.");
			$("#passwordResult").css("color", "#1e70bf");
		} else {
			$("#passwordResult").text("비밀번호가 일치하지 않습니다.");
			$("#passwordResult").css("color", "red");
		}
	}
})


// 휴대폰 번호 자동 커서
$(".phone").on("keyup", function() {
	if(this.value.length >= $(this).attr("maxlength")) {
		var index = $(".phone").index(this) + 1;
		$(".phone").eq(index).focus();
	}
});



// 가입
function check() {
	var id = $("#id").val();
	var password1 = $("#password1").val();
	var password2 = $("#password2").val();
	var department = $("#dept_code").val();
	var name = $("#emp_name").val();
	var gender = $("input[name='gender']").val();
	var birthday = $("#birth").val();
	var phone1 = $("#phone1").val();
	var phone2 = $("#phone2").val();
	var phone3 = $("#phone3").val();
	var phone = phone1 + "-" + phone2 + "-" + phone3;
	var email1 = $("#email1").val();
	var email2 = $("#email2").val();
	var email = email1 + "@" + email2;
	
	if(id == '') {
		alert("아이디를 입력해주세요.");
		$("#id").focus();
		
	} else if(password1 == '' || password2 == '') {
		alert("비밀번호를 입력해주세요.");
		$("#password2").val("");
		$("#password1").focus();
		
	} else if(department <= 0) {
		alert("부서를 선택해주세요.");
		
	} else if(name == '') {
		alert("이름을 입력해주세요.");
		
	} else if(gender == '') {
		alert("성별을 선택해주세요.");
		
	} else if(birthday == '') {
		alert("생년월일을 입력해주세요.");
		
	} else if(phone1 == '' || phone2 == '' || phone3 == '') {
		alert("휴대폰 번호를 입력해주세요.");
		$("#phone1").val("");
		$("#phone2").val("");
		$("#phone3").val("");
		$("#phone1").focus();
		
	} else if(email1 == '' || email2 == '') {
		alert("이메일을 입력해주세요.");
		$("#email1").val("");
		$("#email2").val("");
		$("#email1").focus();
	
	} else {
		
		$("#phone").val(phone);
		$("#email").val(email);
		alert(phone);
		alert(email);
		
		var formData = $("#signupForm").serialize();
		
		console.log(id);
		console.log(password1);
		console.log(password2);
		console.log(department);
		console.log(name);
		console.log(gender);
		console.log(birthday);
		console.log(phone1);
		console.log(phone2);
		console.log(phone3);
		console.log(phone);
		console.log(email1);
		console.log(email2);
		console.log(email);
		
		$.ajax({
			url:"/member/signUp",
			type:"post",
			data:formData,
			success:function(data) {
				
				if(data == 'true') {
					alert("성공");
					location.href="/member/main";
				} else if(data == 'false') {
					alert("실패");
				}
			},
			error: function() {
				alert("서버 에러");
				location.href='member/signUpPage';
			}
		})
	}
}



