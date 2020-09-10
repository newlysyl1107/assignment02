<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- semantic-ui -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/semantic.min.css">
<script src="/resources/js/semantic.min.js"></script>
<!-- 다음 우편번호 api -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
<!-- fontawesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<title>내담C&C 경력관리 시스템</title>
<style>
#main-nav-top {
	padding: 1em;
	border: none;
	margin: 0px;
}

#main-nav-top a {
	position: inherit;
}

#main-nav-top img {
	width: 100% !important;
}

#main-nav-bottom {
	margin-top: 0px;
}

.content-area {
	width: 75% !important;
	height: 100% auto;
}

.contents {
	padding-top: 1.5em;
	padding-bottom: 1.5em;
	min-height: 470px;
}

.required-info {
	color: red;
	font-weight: bold;
}

.ui.button {
	font-weight:normal;
}
</style>
</head>
<body>


	<!-- 최상단 네비 -->
	<div class="ui menu" id="main-nav-top">
		<a class="item" href="/member/main"> 
			<img src="/resources/images/logo.png">
		</a>
		<div class="right menu">
			<c:choose>
				<c:when test="${user ne null && user.auth == 0}"> <!-- master -->
					<a class="item" href="/master/confirmPage">가입승인</a>
					<a class="item" href="/master/careerManage">경력관리조회</a>
					<a class="item" href="#">사원신규등록</a>
					<a class="item" href="/member/logout">로그아웃</a>
				</c:when>
				
				<c:when test="${user ne null && user.auth == 1}"> <!-- admin -->
					<a class="item" href="/member/adminPage">ADMIN</a>
					<a class="item" href="/member/memberPage">회원정보</a>
					<a class="item" href="/member/logout">로그아웃</a>
				</c:when>
				
				<c:when test="${user ne null && user.auth == 2}"> <!-- member -->
					<a class="item" href="/member/myPage">회원정보</a>
					<a class="item" href="/member/logout">로그아웃</a>
				</c:when>
				
				<c:otherwise>									<!-- waiting and none -->
					<a class="item" href="/member/loginPage">로그인</a>
					<a class="item" href="/member/signUpPage">회원가입</a>
				</c:otherwise>
			</c:choose>

		</div>
	</div>

	<div class="ui blue four item inverted menu" id="main-nav-bottom">
		<a class="item menu">경력관리</a> 
		<a class="item menu">이용안내</a> 
		<a class="item menu" href="notice.bo">소식알림</a>
		<a class="item menu">문의</a>
	</div>

</body>
</html>