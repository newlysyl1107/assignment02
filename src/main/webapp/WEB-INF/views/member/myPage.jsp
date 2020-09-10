<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/main/gnb.jsp" />

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<!-- fontawesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- bootStrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    
<style>
  p { margin:20px 0px; }
.con { margin-top:100px;}
.nav-tabs .nav-item {
    margin-bottom: -1px;
    width: 209px;
    text-align: center;
    font-size: 19px;
    font-weight: 200;
}
.tabContent {margin-bottom:100px;}
</style>


    <div class="container con">
      <div class="row">
        <div class="col">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#myPage">내 정보</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#updatePass">비밀번호 수정</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#updateCareer">경력등록</a>
              </li>
            </ul>
            <div class="tab-content tabContent">
              <div class="tab-pane fade show active" id="myPage">
              	<jsp:include page="/WEB-INF/views/member/updateMyInfo.jsp" />
              </div>
              <div class="tab-pane fade" id="updatePass">
              	<jsp:include page="/WEB-INF/views/member/updatePassword.jsp" />
              </div>
              <div class="tab-pane fade" id="updateCareer">
              	<jsp:include page="/WEB-INF/views/member/updateCareer.jsp" />
              </div>
            </div>
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
  
  

<jsp:include page="/WEB-INF/views/main/sideRightNav.jsp" />
<jsp:include page="/WEB-INF/views/main/footer.jsp" />