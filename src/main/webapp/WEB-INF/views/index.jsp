<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<link rel="stylesheet" href="../resources/css/index.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<jsp:include page="font.jsp"></jsp:include>
</head>
<body>
	<div class="All">
		<jsp:include page="nav.jsp"></jsp:include>
		<section>
			<!-- 메인 컨텐츠 메뉴 시작 -->
			<div class="main_content">
				<div class="font_Family">
					<div class="font_Title">
						<img src="../resources/img/font_title.png" alt="title">
					</div>
					<div class="font_Search">
						<div class="Search_01">
							<input type="text" placeholder="내 티어 검색 . .">
							<div class="S_btn">
								<img src="../resources/img/premium.png" width="55%" height="60%"
									alt="premium">
							</div>
						</div>
					</div>
					<div class="font_Img">
						<div class="font_t">
							<img src="../resources/img/font_text.png" alt="text">
						</div>
					</div>
					<div class="sw02_01_img">
						<img src="../resources/img/bImg.png" alt="캐릭터">
					</div>
				</div>
			</div>
			<!-- 메인 컨텐츠 메뉴 끝 -->
		</section>

		<section>
			<div class="banner">
				<div class="swiper mySwiper">
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
									<!-- <div class="sw02_01_img">
                                        <img src="../resources/img/bImg.png" alt="캐릭터">
                                    </div> -->
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
										<a href="#">(예시 문구) 내 티어 계산하는 방법 알아보기 !</a>
									</div>
									<div class="sw01_date">
										<p>2022년 04월 19일</p>
									</div>
								</div>
							</div>
							<div class="sw02">
								<div class="sw02_01">
									<!-- <div class="sw02_01_img">
                                        <img src="../resources/img/bImg.png" alt="캐릭터">
                                    </div> -->
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
										<a href="#">(예시 문구) 중고마켓 회원들과 중고 거래하는 방법 !</a>
									</div>
									<div class="sw01_date">
										<p>2022년 04월 20일</p>
									</div>
								</div>
							</div>
							<div class="sw02">
								<div class="sw02_01">
									<!-- <div class="sw02_01_img">
                                        <img src="../resources/img/bImg.png" alt="캐릭터">
                                    </div> -->
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
			<!-- 배너 부분 -->
		</section>

		<section>
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
									<tr class="tfootTr01">
										<td style="width: 40%;"><a href="clan/list">팀 순위
												상세보기</a></td>
										<td style="width: 6%; line-height: 10px;"><a href="#"><img
												src="../resources/img/viewIcon.png" width="100%" alt="상세보기"></a></td>
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
										<td style="width: 45%;"><a href="/rank/list">개인 순위 상세보기</a></td>
										<td style="width: 6%; line-height: 10px;"><a href="/rank/list"><img
												src="../resources/img/viewIcon.png" width="100%" alt="상세보기"></a></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- 랭크 컨텐츠 부분 -->
		</section>
		
	</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<script src="../resources/js/index.js"></script>
</body>
</html>