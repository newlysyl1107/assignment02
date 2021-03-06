<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/views/main/gnb.jsp" />
<link rel="stylesheet" href="/resources/css/main.css">

<div class="content-area ui container">
	<div class="contents column" id="contentArea">
		<div class="ui equal width center aligned padded grid"
			id="main-content-area">
			<div class="row" id="main-info">
				<div class="column">
					<h3>ND SW기술자 경력관리시스템</h3>
					<p>ND기술자의 경력을 체계적 관리하고,</p>
					<p>개발자 배치를 효율적으로 관리하는 시스템 입니다.</p>
				</div>
			</div>
			<div class="row" id="main-menu">
				<div class="four wide column main-menus">
					<div>
						<h2>
							<i class="fas fa-info-circle icon"></i> &nbsp; 이용안내
						</h2>
					</div>
				</div>
				<div class="four wide column main-menus" onclick="empInfo()">
					<h2>
						<i class="fas fa-id-card icon"></i> &nbsp; 경력등록
					</h2>
				</div>
			</div>
			<div class="row" id="notice-area">
				<div class="five wide column" id="notice-header">
					<div style="padding: 1em;">
						<h3>
							<i class="fas fa-sticky-note icon"></i>&nbsp; 공지사항
						</h3>
					</div>
				</div>
				<div class="eleven wide column">
					<div class="row">
						<div class="column" align="right">
							<a class="item menu" href="notice.bo">+ 더보기</a>
						</div>
						<div class="column" align="left" id="notice-content">

							<div class="column noticeLine" onclick="notice(3)">
								<span style="padding-right: 1em;">2020-08-31</span> <span>[더미]신규
									등록 사원 대상 공지사항.</span>
							</div>

							<div class="column noticeLine" onclick="notice(2)">
								<span style="padding-right: 1em;">2020-03-11</span> <span>프로젝트
									철수시 프로젝트 내용을 업데이트 바랍니다.</span>
							</div>

							<div class="column noticeLine" onclick="notice(1)">
								<span style="padding-right: 1em;">2020-03-11</span> <span>경력관리시스템
									이용은 크롬 브라우저를 사용 바랍니다.</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>




<jsp:include page="/WEB-INF/views/main/sideRightNav.jsp" />
<jsp:include page="/WEB-INF/views/main/footer.jsp" />