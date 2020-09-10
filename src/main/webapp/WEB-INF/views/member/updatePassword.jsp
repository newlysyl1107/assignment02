<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- CSS -->
<link rel="stylesheet" href="/resources/css/updatePassword.css">

<body>

<div class="container allwrap">
	<div class="row">
		<div class="col-5 title">
			<label> 현재 비밀번호 </label>
		</div>
		<div class="col-7 content">
			<input type="text" class="form-control form-control-sm" style="width:200px;">
		</div>
	</div>
	<div class="row">
		<div class="col-5 title">
			<label> 변경할 비밀번호 </label>
		</div>
		<div class="col-7 content">
			<input type="text" class="form-control form-control-sm" style="width:200px;">
		</div>
	</div>
	<div class="row">
		<div class="col-5 title">
			<label> 변경할 비밀번호 재확인 </label>
		</div>
		<div class="col-7 content">
			<input type="text" class="form-control form-control-sm" style="width:200px;">
		</div>
	</div>
</div>

<div class="btn-cls">
	<button type="button" class="updateBtn2"> 비밀번호 수정 </button>
	<button type="button" onclick="location.href='main'" class="backBtn"> 돌아가기 </button>
</div>

</body>
</html>