<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/battleBtn.css">
<link rel="stylesheet" href="/resources/css/clanrankdetails.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet" href="/resources/css/singup2.css"/>
	<jsp:include page="../font.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
<%-- 	<jsp:include page="../rnav.jsp"></jsp:include> --%>
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

			<form method="post" class="vspost">
				<div class="vspost_01">
					<h3>대결 신청 등록</h3>
				</div>
				<div class="vspost_02">
					<div class="vspost_02_01">
						<label>제목</label> <input type="text" name="title">
					</div>
					<div class="vspost_02_01">
						<label>시간</label> <input type="text" name="clock">
					</div>
					<div class="vspost_02_01 tableInput">
							<label>위치</label>
							<div class="tableInput_01">
	                            <input type="text" style="width: 23%;" name="postcode" id="postcode"  placeholder="우편번호" readonly>
	                            <button type="button" class="tableBtn0" onclick="execDaumPostcode()">우편번호</button>
	                        </div>
	                        <div class="tableInput_02">
	                            <input type="text" style="margin-left: 1.5em;" class="tableBtn1" name="loc" id="address" placeholder="도로명 주소" readonly />
	                        </div>
	                </div>
					<div class="vspost_02_01">
						<label>모집</label> <input type="text" name="recruit">
					</div>
					<div class="vspost_02_01">
						<label>내용</label> <input type="text" name="story">
					</div>
				</div>
				
				<div class="applicant">
	                <div class="applicant_01">
	                    <h3>등록이 된 가쟁점 위치</h3>
	                </div>
                		<div class="applicant_02">
                   			<table class="applicanttable">
                    		    <colgroup>
		                            <col style="width: 30%;">
		                            <col style="width: 70%;">
                        		</colgroup>
		                        <thead>
		                            <tr>
		                            	<th>No.</th>
		                                <th>주소</th>
		                            </tr>
		                        </thead>
		                        <tbody>
		                        <c:forEach items="${franchiseeList}" var="item" varStatus="status">
		                            <tr>
		                            	<td>${status.index + 1 }</td>
		                                <td>${item.address}</td>
								</c:forEach>
		                        </tbody>
		                    </table>
		                </div>
					</div>
				
				<div class="cbtn0">
					<button>등록</button>
				</div>
			</form>
		</div>

		<div class="wh"></div>
	</section>
	
	<!-- 카카오 지도 API 시작 -->
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f281014ca014b8210d45a1c3d8663784"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	    mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
		    {
		        title: '카카오', 
		        latlng: new kakao.maps.LatLng(33.450705, 126.570677)
		    },
		    {
		        title: '생태연못', 
		        latlng: new kakao.maps.LatLng(33.450936, 126.569477)
		    },
		    {
		        title: '텃밭', 
		        latlng: new kakao.maps.LatLng(33.450879, 126.569940)
		    },
		    {
		        title: '근린공원',
		        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
		    }
		];
		
		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		}
	</script>
	<!-- 카카오 지도 API 끝 -->	
	
	    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script> 
	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="../resources/js/index.js"></script>
</body>
</html>