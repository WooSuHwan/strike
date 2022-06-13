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

</head>
<body>
	<jsp:include page="../font.jsp"></jsp:include>
	<jsp:include page="../nav.jsp"></jsp:include>
	<jsp:include page="../rnav.jsp"></jsp:include>

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
					<div class="vspost_02_01">
						<label>주소</label> <input type="text" name="address">
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
	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="../resources/js/index.js"></script>
</body>
</html>