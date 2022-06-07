<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet" href="/resources/css/Mham.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://www.w3schools.com/lib/w3.js"></script>
<jsp:include page="font.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<script>
   		window.open("../resources/img/popup_store.png","popup","width=600, height=701, left=0, top=180px")
   </script>
</head>
<body>
	<section>
		<div class="inAll">
			<div class="hnone"></div>
			<!-- nav밑 빈영역 채우기 -->
			<div class="Mlogin">
				<div class="Mlogin_01">
					<a href="/login.html">로그인/회원가입</a> &nbsp; <a href="/login.html">마이페이지</a>
				</div>
			</div>
			<div class="upperArea">
				<!-- 위에 내용 -->
				<div class="main_content01">
					<img src="../resources/img/font_title.png" width="100%" height="100%"
						alt="title">
				</div>
				<div class="main_content02">
					<div class="mainSearch">
						<input type="text" placeholder="내 티어 검색 . .">
						<div class="S_btn01">
							<img src="../resources/img/premium.png" width="70%" height="60%"
								alt="premium">
						</div>
					</div>
				</div>
				<div class="main_content03">
					<img src="../resources/img/font_text.png" alt="text">
				</div>
			</div>

			<div class="indexBanner swiper mySwiper">
				<!-- 슬라이드 -->
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="sw01">
							<div class="sw01_01">
								<div class="sw01_box">
									<div class="sw01_box_title">
										<p>자유게시판</p>
									</div>
								</div>
								<div class="sw01_title">
									<a href="#">볼링 잘치는법 초보들을 위한 꿀팁 !</a>
								</div>
								<div class="sw01_date">
									<p>2022년 04월 18일</p>
								</div>
							</div>
						</div>
						<div class="sw02">
							<div class="sw02_01">
								<img src="../resources/img/sbo1.png" width="65%" height="90%" alt="캐릭터">
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="sw01">
							<div class="sw01_01">
								<div class="sw01_box">
									<div class="sw01_box_title">
										<p>자유게시판</p>
									</div>
								</div>
								<div class="sw01_title">
									<a href="#">내 티어 계산하는 방법 알아보기 !</a>
								</div>
								<div class="sw01_date">
									<p>2022년 04월 19일</p>
								</div>
							</div>
						</div>
						<div class="sw02">
							<div class="sw02_01">
								<img src="../resources/img/sbo2.png" width="65%" height="90%" alt="캐릭터">
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="sw01">
							<div class="sw01_01">
								<div class="sw01_box">
									<div class="sw01_box_title">
										<p>공지게시판</p>
									</div>
								</div>
								<div class="sw01_title">
									<a href="#">중고마켓 회원들과 중고 거래하기 !</a>
								</div>
								<div class="sw01_date">
									<p>2022년 04월 20일</p>
								</div>
							</div>
						</div>
						<div class="sw02">
							<div class="sw02_01">
								<img src="../resources/img/clandetailsicon.png" width="45%" height="70%" alt="캐릭터">
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-pagination"></div>
			</div>
		</div>
	</section>

	<section>
		<!-- 밑에 내용 -->
		<div class="rank_content">
			<div class="blackBar"></div>
			<div class="rankbody">
				<div class="ranktxt">
					<div class="ranktxt01">
						<div class="ranktxt01_01">
							<h3>
								<span>TEAM</span><br>RANK ,
							</h3>
						</div>
						<div class="ranktxt01_02">
							<div class="ranktxt01_02bar">
								<div class="R02bar"></div>
								<div class="R02rid01"></div>
								<div class="R02rid02"></div>
							</div>
						</div>
					</div>
					<div class="ranktxt02">
						<h3>
							<span>PERSONAL</span><br>RANK
						</h3>
					</div>
				</div>
				<div class="rankC">
					<div class="rankC01">
						<table class="table_R">
							<thead class="rankC01_01">
								<tr style="display: flex; width: 100%;">
									<th class="rank01_t1" width="20%">순위</th>
									<th class="rank01_t2" width="25%">이름</th>
									<th class="rank01_t3" width="55%">티어</th>
								</tr>
							</thead>
							<tbody class="rankC01_02">
							 <c:forEach items="${clanList}" var="item" varStatus="status">
	                           <tr class="tbodyTr01">
	                              <td width="20%" height="100%">${status.index + 1}</td>
	                              <td width="25%" height="100%">${item.clan_name}</td>
	                              <td width="55%" height="100%">티어수정필요함</td>
	                           </tr>
	                        </c:forEach>
							</tbody>
							<tfoot class="rankC01_03">
								<tr class="tfootTr01 tdtd">
									<td><a href="clan/list">팀 순위 상세보기</a></td>
									<td style="width: 6%; line-height: 10px;"><a href="#">
									<img src="../resources/img/viewIcon.png" width="100%" alt="상세보기"></a>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
				<div class="rankS">
					<div class="rankC02">
						<table class="table_R">
							<thead class="rankC01_01">
								<tr style="display: flex; width: 100%;">
									<th class="rank01_t1" width="20%">순위</th>
									<th class="rank01_t2" width="25%">이름</th>
									<th class="rank01_t3" width="55%">티어</th>
								</tr>
							</thead>
							<tbody class="rankC01_02">
								<c:forEach items="${rankList}" var="item" varStatus="status">
		                           <tr class="tbodyTr01">
		                              <td width="20%" height="100%">${status.index + 1}</td>
		                              <td width="25%" height="100%">${item.name}</td>
		                              <td width="55%" height="100%">${item.score}</td>
		                           </tr>
		                        </c:forEach>
							</tbody>
							<tfoot class="rankC01_03">
								<tr class="tfootTr01">
									<td><a href="/rank/list">개인 순위 상세보기</a></td>
									<td style="width: 6%; line-height: 10px;">
										<a href="#"><img src="../resources/img/viewIcon.png" width="100%" alt="상세보기"></a>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- 랭크 컨텐츠 부분 -->
	</section>

	<section>
		<div class="rank_content2">
			<div class="CRan01">
				<div class="CRan01_01">
					<div class="Cranktxt01_01">
						<h3>
							<span>TEAM</span> RANK
						</h3>
					</div>
				</div>
				<div class="CRan01_02">
					<div class="rankC">
						<div class="rankC01">
							<table class="table_R">
								<thead class="rankC01_01">
									<tr style="display: flex; width: 100%;">
										<th class="rank01_t1" width="20%">순위</th>
										<th class="rank01_t2" width="25%">이름</th>
										<th class="rank01_t3" width="55%">티어</th>
									</tr>
								</thead>
								<tbody class="rankC01_02">
									<c:forEach items="${clanList}" var="item" varStatus="status">
			                           <tr class="tbodyTr01">
			                              <td width="20%" height="100%">${status.index + 1}</td>
			                              <td width="25%" height="100%">${item.clan_name}</td>
			                              <td width="55%" height="100%">티어수정필요함</td>
			                           </tr>
			                        </c:forEach>
								</tbody>
								<tfoot class="rankC01_03">
									<tr class="tfootTr01 tdtd">
										<td><a href="#">팀 순위 상세보기</a></td>
										<td style="width: 6%; line-height: 10px;"><a href="#"><img
												src="../Img/viewIcon.png" width="100%" alt="상세보기"></a></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="PRan01">
				<div class="CRan01_01">
					<div class="Cranktxt01_01">
						<h3>
							<span>PERSONAL</span> RANK
						</h3>
					</div>
				</div>
				<div class="CRan01_02">
					<div class="rankC02">
						<table class="table_R">
							<thead class="rankC01_01">
								<tr style="display: flex; width: 100%;">
									<th class="rank01_t1" width="20%">순위</th>
									<th class="rank01_t2" width="25%">이름</th>
									<th class="rank01_t3" width="55%">티어</th>
								</tr>
							</thead>
							<tbody class="rankC01_02">
								<c:forEach items="${rankList}" var="item" varStatus="status">
		                           <tr class="tbodyTr01">
		                              <td width="20%" height="100%">${status.index + 1}</td>
		                              <td width="25%" height="100%">${item.name}</td>
		                              <td width="55%" height="100%">${item.score}</td>
		                           </tr>
		                        </c:forEach>
							</tbody>
							<tfoot class="rankC01_03">
								<tr class="tfootTr01">
									<td><a href="#">개인 순위 상세보기</a></td>
									<td style="width: 6%; line-height: 10px;"><a href="#"><img
											src="../Img/viewIcon.png" width="100%" alt="상세보기"></a></td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
  <map name="popup" id="popup">
        <area shape="rect" coords="380,457,487,492" href="#" alt="close" onclick="window.close();">
   </map>
   		<jsp:include page="footer.jsp"></jsp:include>
   <!-- script부분 -->
		<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
     	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
		<script src="../resources/js/index.js"></script>
   
</body>
</html>