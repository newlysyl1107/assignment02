<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- CSS -->
<link rel="stylesheet" href="/resources/css/updateMyInfo.css">

</head>
<body>



<div class="container updateCon">

	<!-- 사진 , 폼 영역 -->
	<div class="row">
		
		<!-- 사진 -->
		<div class="col-4 photo-area">
			<img src="/resources/images/notImage.png">
			<br><br>
			<button type="button" class="addPhotoBtn"> 사진 등록 </button>
		</div>
		
		<!-- 폼 -->
		<div class="col-8" style="padding-top:35px;">
			<div class="row" style="margin-top:20px;margin-bottom:20px;">
				<div class="col-3" style="text-align:right;padding-top:6px;"> 이름 </div>
				<div class="col-9"> 
					<input class="form-control form-control-sm" type="text" style="width:362px;"> 
				</div>
			</div>
			<div class="row" style="margin-top:20px;margin-bottom:20px;">
				<div class="col-3" style="text-align:right;"> 부서 </div>
				<div class="col-9"> 
					<select style="width:362px;"  class="form-control form-control-sm"> </select> 
				</div>
			</div>
			<div class="row" style="margin-top:20px;margin-bottom:20px;">
				<div class="col-3" style="text-align:right;"> 휴대폰번호 </div>
				<div class="col-9">
					<input class="form-control form-control-sm" type="text" style="width:112px;"> - <input class="form-control form-control-sm" type="text" style="width:112px;"> - <input class="form-control form-control-sm" type="text" style="width:112px;"> 
				</div>
			</div>
			<div class="row" style="margin-top:20px;margin-bottom:20px;">
				<div class="col-3" style="text-align:right;"> 이메일 </div>
				<div class="col-9"> 
					<input type="text" class="form-control form-control-sm" style="width:112px;"> @ <input type="text" class="form-control form-control-sm" style="width:112px;"> <select style="width:112px;"  class="form-control form-control-sm"> </select> 
				</div>
			</div>
			<div class="row" style="margin-top:20px;margin-bottom:20px;">
				<div class="col-3" style="text-align:right;"> 주소 </div>
				<div class="col-9"> 
					<button type="button" class="findAddBtn" onclick="sample6_execDaumPostcode()"> 주소찾기 </button> 
					<input type="text" id="sample6_address" class="form-control form-control-sm" style="width:268px;"> 
					<input type="hidden" id="sample6_detailAddress" placeholder="상세주소">
					<input type="hidden" id="sample6_postcode" placeholder="우편번호">
					<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
				</div>
			</div>
		</div>
		
	</div>
	
	
	<!-- 날짜 , 버튼 영역 -->
	<div class="row">
	
		<!-- 날짜 -->
		<div class="col-4 date-area">
			<div class="row">
				<div class="col-5" style="text-align:right;">• 최근 수정일</div>
				<div class="col-7" style="text-align:left;">2020-11-02</div>
			</div>
			<div class="row">
				<div class="col-5" style="text-align:right;">• 최근 접속일</div>
				<div class="col-7" style="text-align:left;">2020-11-10 14:30:21</div>
			</div>
			<div class="row">
				<div class="col-5" style="text-align:right;">• 최근 접속 IP</div>
				<div class="col-7" style="text-align:left;">192.168.0.67</div>
			</div>
		</div>
		
		<!-- 버튼 -->
		<div class="col-8" style="margin-top:40px;">
			<button type="button" class="updateBtn"> 수정하기 </button>
			<button type="button" class="withdrawalBtn"> 탈퇴하기 </button>
		</div>
		
	</div>
	
</div>


<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>



</body>
</html>