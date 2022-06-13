<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../font.jsp"></jsp:include>
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet" href="/resources/css/mypageRecord.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />

</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>

	<div class="mypageNav"></div>

	<div class="mypageTotal">
		<div class="itemTotal">

			<div class="leftNav">
				<div class="navPro">
					<div class="proOne">
						<img src="/resources/img/mypage1.png" alt="1">
					</div>
					<div class="proFont">
						<div class="proName">${sessionScope.member.name }</div>
						<div class="proName2">&nbsp;님</div>
					</div>
				</div>

				<div class="navList">
					<div class="navListDiv">
						<div class="navListDivName">
							<a href="../update/${sessionScope.member.member_code}">내 정보
								관리</a>
						</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv">
						<div class="navListDivName nt">경기결과</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv">
						<div class="navListDivName">
							<a href="../gameDetail/${sessionScope.member.member_code}">신청내역</a>
						</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv">
						<div class="navListDivName">
							<a href="../delete">회원탈퇴</a>
						</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv">
						<div class="navListDivName">
							<a href="/mypage/mypage/${sessionScope.member.member_code}">마이페이지
								홈</a>
						</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv"></div>
				</div>

			</div>

			<div class="recordMain">
				<div class="recordMainTitle">개인 / 클랜 전적 확인</div>
				<div class="detailsTitle">
					<a href="../mypageRecord/${sessionScope.member.member_code}">
						<div class="titleDiv TD">개인 대결 전적</div>
					</a> <a href="../mypageClanRecord/${sessionScope.member.member_code}">
						<div class="titleDiv">클랜 대결 전적</div>
					</a>
				</div>

				<c:forEach items="${mypageRecord}" var="item" varStatus="status">
					<c:if test="${item.winner_code eq sessionScope.member.member_code}">
						<div class="recordMainList rankRulstBackWin">
							<div class="listLine">
								<div class="listLineDate">
									<fmt:formatDate value="${item.time_end}" type="date"
										pattern="YYYY.MM.dd" />
								</div>
								<div class="listLineName">클랜전</div>
							</div>

							<div class="winOrLose">win or lose</div>

							<div class="listScore">

								<c:if
									test="${item.maker_code == sessionScope.member.member_code }">
									<div>${item.name}</div>
									<div class="WOL">
										<div class="rankRulstFontWin">승</div>
										<div>:</div>
										<div class="rankRulstFontlose">패</div>
									</div>
									<div>${item.challenger_name}</div>
								</c:if>

								<c:if
									test="${item.challenger_code == sessionScope.member.member_code }">
									<div>${item.challenger_name}</div>
									<div class="WOL">
										<div class="rankRulstFontWin">승</div>
										<div>:</div>
										<div class="rankRulstFontlose">패</div>
									</div>
									<div>${item.name}</div>
								</c:if>
							</div>
						</div>
					</c:if>

					<c:if test="${item.loser_code == sessionScope.member.member_code}">
						<div class="recordMainList rankRulstBackLose">
							<div class="listLine">
								<div class="listLineDate">
									<fmt:formatDate value="${item.time_end}" type="date"
										pattern="YYYY.MM.dd" />
								</div>
								<div class="listLineName">클랜전</div>
							</div>

							<div class="winOrLose">win or lose</div>

							<div class="listScore">
								<c:if
									test="${item.maker_code == sessionScope.member.member_code }">
									<div>${item.name}</div>
									<div class="WOL">
										<div class="rankRulstFontlose">패</div>
										<div>:</div>
										<div class="rankRulstFontWin">승</div>
									</div>
									<div>${item.challenger_name}</div>
								</c:if>

								<c:if
									test="${item.challenger_code == sessionScope.member.member_code }">
									<div>${item.challenger_name}</div>
									<div class="WOL">
										<div class="rankRulstFontlose">패</div>
										<div>:</div>
										<div class="rankRulstFontWin">승</div>
									</div>
									<div>${item.name}</div>
								</c:if>
							</div>
						</div>
					</c:if>

					<c:if test="${item.draw == 1 and item.maker_code == sessionScope.member.member_code}">
							<div class="recordMainList rankRulstBackDraw">
								<div class="listLine">
									<div class="listLineDate">
										<fmt:formatDate value="${item.time_end}" type="date"
											pattern="YYYY.MM.dd" />
									</div>
									<div class="listLineName">클랜전</div>
								</div>

								<div class="winOrLose">win or lose</div>

								<div class="listScore">
									<c:if
										test="${item.maker_code == sessionScope.member.member_code }">
										<div>${item.name}</div>
										<div class="WOL">
											<div>
												<div class="draw">무승부</div>
											</div>
										</div>
										<div>${item.challenger_name}</div>
									</c:if>

									<c:if
										test="${item.challenger_code == sessionScope.member.member_code }">
										<div>${item.challenger_name}</div>
										<div class="WOL">
											<div>
												<div class="draw">무승부</div>
											</div>
										</div>
										<div>${item.name}</div>
									</c:if>
								</div>
							</div>
					</c:if>
						<c:if test="${item.draw == 1 and item.challenger_code == sessionScope.member.member_code}">
							<div class="recordMainList rankRulstBackDraw">
								<div class="listLine">
									<div class="listLineDate">
										<fmt:formatDate value="${item.time_end}" type="date"
											pattern="YYYY.MM.dd" />
									</div>
									<div class="listLineName">클랜전</div>
								</div>

								<div class="winOrLose">win or lose</div>

								<div class="listScore">
									<c:if
										test="${item.maker_code == sessionScope.member.member_code }">
										<div>${item.name}</div>
										<div class="WOL">
											<div>
												<div class="draw">무승부</div>
											</div>
										</div>
										<div>${item.challenger_name}</div>
									</c:if>

									<c:if
										test="${item.challenger_code == sessionScope.member.member_code }">
										<div>${item.challenger_name}</div>
										<div class="WOL">
											<div>
												<div class="draw">무승부</div>
											</div>
										</div>
										<div>${item.name}</div>
									</c:if>
								</div>
							</div>
						</c:if>
				</c:forEach>


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
		</div>
	</div>
	<!-- script -->
	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="/resources/js/index.js"></script>
</body>
</html>