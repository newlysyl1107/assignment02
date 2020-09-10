<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/views/main/gnb.jsp" />
<link rel="stylesheet" href="/resources/css/login.css">


<div class="content-area ui container" align="center">
	<div class="contents column">
		<div class="column" id="signin-area">
			<!-- 로그인 폼 -->
			<form class="ui form" id="signinForm" method="post" action="/member/login">
				<div class="field">
					<label>아이디</label>
					<input type="text" placeholder="아이디를 입력하세요." name="id" onKeyDown="onKeyDown()" value="">
				</div>
				<div class="field">
					<label>비밀번호</label>
					<input type="password" placeholder="비밀번호를 입력하세요." name="password" onKeyDown="onKeyDown()">
				</div>
				<div class="field" id="find-area">
					<p id="signin-msg" style="color: red;">
					</p>
				</div>
				<div class="field" id="find-area">
					<a href="findInfoForm.em">아이디 | 비밀번호 찾기</a>
				</div>
				<div class="field">
					<button class="fluid ui blue button" onclick="check()" type="button">로그인</button>
					<br>
					<button class="fluid ui grey button" type="button" onclick="signup()">회원가입</button>
				</div>
			</form>
			<!-- 로그인 폼 끝 -->
		</div>
	</div>
</div>


<script src="/resources/js/login.js"></script>
<jsp:include page="/WEB-INF/views/main/sideRightNav.jsp" />
<jsp:include page="/WEB-INF/views/main/footer.jsp" />