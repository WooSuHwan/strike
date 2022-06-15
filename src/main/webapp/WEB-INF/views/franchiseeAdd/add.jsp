<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/battleBtn.css">
<link rel="stylesheet" href="/resources/css/index.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
//페이지 로딩 후
$(function() {
	// 등록을 눌렀을 때 등록 방지 용도
	$("#add").click(function(event) {
		console.log( $("#applyForm input[name='style']:checked").val() );
		
		if($("#applyForm input[name='name']").val()=="") {
			alert("이름이 비었습니다");
			return false;
		}
		
		if($("#applyForm input[name='address']").val()=="") {
			alert("주소가 비었습니다");
			return false;
		}
		
		if($("#applyForm input[name='tel']").val()=="") {
			alert("전화번호가 비었습니다");
			return false;
		}
		
		$("#applyForm").submit();
			
	});
})
</script>

<script>
$(function() { // 입장과 동시에 실행
	
	loadMap(); //지도 데이터를 들고오는 코드
})
</script>

	<jsp:include page="../font.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>

	<div class="mypageNav"></div>
	<section>
		<div class="clanAll">
			<div class="clanrankSearch">
				<div class="clanrankSearch1200">
					<div class="clanrankSearch_01">
						<h2>가맹점 신청 등록</h2>
					</div>
				</div>
			</div>

			<form id="applyForm" method="post" class="vspost">
				<div class="vspost_01">
					<h3>가맹점 신청 등록</h3>
				</div>
				<div class="vspost_02">
					<div class="vspost_02_01">
						<label>이름</label> <input type="text" name="name">
					</div>
					<div class="vspost_02_011">
						<label>주소</label>
						<div class="vspost_02_011_IN">
							<div class="tableInput_01">
								<input type="text" name="postcode" style="width: 40%;" id="postcode" placeholder="우편번호" readonly>
								<button style="margin-left: 0.7em;" type="button" class="tableBtn0" onclick="execDaumPostcode()">우편번호</button>
							</div>
							<div class="tableInput_02">
								<input type="text" style="width: 40%;" class="tableBtn1" name="address" id="address" placeholder="도로명 주소" readonly /> 
								<input type="text" style="margin-left: 0.7em; width: 60%;" name="detailAddress" placeholder="상세 주소" required />
							</div>
						</div>
					</div>
					<div class="vspost_02_01">
						<label>전화번호</label> <input type="text" name="tel">
					</div>
				</div>
				
				<div class="cbtn0">
					<button type="button" id="add" class="add">등록</button>
				</div>
			</form>
		</div>

		<div class="wh"></div>
	</section>
	 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>  
	 <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script> 
	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="../resources/js/index.js"></script>
</body>
</html>