<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/battleBtn.css">
<link rel="stylesheet" href="/resources/css/index.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	//페이지 로딩 후
	$(function() {
		// 등록을 눌렀을 때 등록 방지 용도
		$("#add").click(function(event) {
			console.log($("#applyForm input[name='style']:checked").val());

			if ($("#applyForm input[name='title']").val() == "") {
				alert("제목이 비었습니다");
				return false;
			}

			if ($("#applyForm input[name='clock']").val() == "") {
				alert("시간이 비었습니다");
				return false;
			}

			if ($("#applyForm input[name='loc']").val() == "") {
				alert("위치가 비었습니다");
				return false;
			}

			if ($("#applyForm input[name='clan_recruit']").val() == "") {
				alert("모집이 비었습니다");
				return false;
			}

			if (!$("#applyForm input[name='style']:checked").val()) {
				alert("스타일이 비었습니다");
				return false;
			}

			$("#applyForm").submit();

		});
	})
</script>

<script>
//주소 중복 확인
function confirm(event) {
	var loc = $("#loc").val();
	var input = document.getElementById('loc'); 
	
	if(loc == "") {
		return false;
	}
	// 주소 중복 확인
	$.ajax({
		url:"same",
		data:{"loc" : loc},
		method:"POST",
		dataType:"TEXT",
		success:function(data) {
			console.log(data);
			
			if(data == "overlap") {
				console.log("주소가 존재합니다");
			} else {
				console.log("주소가 없습니다");
				alert("존재하는 주소를 입력해주세요");
				input.value = "";
			}
		},
		error:function(){
			console.err("에러")
		}
	})
}
//페이지 로딩 후
$(function() {
	$("#loc").blur(function() {
		confirm();
	})
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
						<h2>대결 신청 등록</h2>
					</div>
				</div>
			</div>

			<form id="applyForm" method="post" class="vspost">
				<div class="vspost_01">
					<h3>대결 신청 등록</h3>
				</div>
				<div class="vspost_02">
					<div class="vspost_02_01">
						<label>제목</label> <input type="text" name="title">
					</div>
					<div class="vspost_02_01">
						<label>시간</label> <input type="datetime-local" name="clock">
					</div>
					<div class="vspost_02_01">
						<label>위치</label> <input type="text" name="loc" id="loc">
					</div>
					<div class="vspost_02_01">
						<label>모집클랜</label> <input type="number" name="clan_recruit">
					</div>
					<div class="vspost_02_01">
						<label>내용</label> <input type="text" name="story">
					</div>
					<div class="vspost_02_01">
						<label>스타일</label> <label><input type="radio" name="style"
							value="1" class="vsstyle">1 vs 1</label> <label><input
							type="radio" name="style" value="2" class="vsstyle">2 vs
							2</label> <label><input type="radio" name="style" value="3"
							class="vsstyle">3 vs 3</label> <label><input type="radio"
							name="style" value="4" class="vsstyle">4 vs 4</label> <label><input
							type="radio" name="style" value="5" class="vsstyle">5 vs
							5</label>
					</div>
				</div>

				<div class="applicant">
					<div class="applicant_01">
						<h3>등록이 된 가맹점 위치</h3>
					</div>
					<div class="applicant_02">
						<table class="applicanttable">
							<colgroup>
								<col style="width: 15%;">
								<col style="width: 85%;">
							</colgroup>
							<thead>
								<tr>
									<th>No.</th>
									<th>주소</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${franchiseeList}" var="item"
									varStatus="status">
									<tr>
										<td>${status.index + 1 }</td>
										<td>${item.address}</td>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="cbtn0">
						<button type="button" id="add" class="add">등록</button>
					</div>
					<div class="pagination">
						<div class="paginate">
							<a href="?page=1" class="pagebtn link arrow start prev"
								data-page="1">처음 페이지</a> <a
								href="?page=${pager.prev }&${pager.query}"
								class="link arrow prev" data-page="1">이전 페이지</a>
							<!--                     <span class="link mobile" data-page="1" data-end="10"> -->
							<!--                         <span class="now">1</span>/ 8 -->
							<!--                     </span> -->
							<c:forEach var="page" items="${pager.list}">
								<a href="?page=${page}&${pager.query}"
									class="link now${page == pager.page ? '': 'active' }">${page}</a>
							</c:forEach>
							<a href="?page=${pager.next }&${pager.query}"
								class="pagebtn link arrow next" data-page="9">다음 페이지</a> <a
								href="?page=${pager.last}" class="pagebtn link arrow last next"
								data-page="66">Next</a>
						</div>
					</div>
				</div>
			</form>
		</div>


	</section>

	<section
		style="display: flex; justify-content: center; margin-top: 5.5em;">
		<div class="api">
			<!-- 카카오 지도 보여주는 div -->
			<div class="api_01">
				<h3>등록이 되어 있는 가맹점 위치</h3>
			</div>
			<div id="map" class="map"></div>
			<!-- 카카오 지도 보여주는 div -->
			<!-- 카카오 지도 API 시작 -->
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f281014ca014b8210d45a1c3d8663784"></script>
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
				mapOption = {
					center : new kakao.maps.LatLng(36.3504119, 127.3845475), // 지도의 중심좌표
					level : 13
				// 지도의 확대 레벨
				};

				var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

				function loadMap() { // 지도 데이터를 들고오는 코드
					console.log("loadMap()");
					$
							.ajax({
								url : "/game/add/map",
								method : "GET",
								dataType : "JSON",
								success : function(server_data) {
									console.log(server_data);

									var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; // 마커 이미지의 이미지 주소입니다

									for (var i = 0; i < server_data.length; i++) {

										var imageSize = new kakao.maps.Size(24,
												35); // 마커 이미지의 이미지 크기 입니다

										var markerImage = new kakao.maps.MarkerImage(
												imageSrc, imageSize); // 마커 이미지를 생성합니다 

										var latlng = new kakao.maps.LatLng(
												server_data[i].latitude,
												server_data[i].longitude); // 저장되어 있는 위도 경도를 latlng 변수에 저장

										var marker = new kakao.maps.Marker({ // 마커를 생성합니다
											map : map, // 마커를 표시할 지도
											position : latlng, // 마커를 표시할 위치
											title : server_data[i].address, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
											image : markerImage
										// 마커 이미지 
										});
									}
								}
							})
				}
			</script>
			<!-- 카카오 지도 API 끝 -->
		</div>
	</section>
	<div class="wh"></div>

	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="../resources/js/index.js"></script>
</body>
</html>