<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/personalVs.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://www.w3schools.com/lib/w3.js"></script>
</head>
<body>
	<!-- 	<div> -->
	<!-- 		<h1>개인전 리스트</h1> -->
	<!-- 		<div> -->
	<!-- 			<table border="1"> -->
	<!-- 				<thead> -->
	<!-- 					<tr> -->
	<!-- 						<th>번호</th> -->
	<!-- 						<th>작성자</th> -->
	<!-- 						<th>제목</th> -->
	<!-- 						<th>시간</th> -->
	<!-- 						<th>위치</th> -->
	<!-- 						<th>모집인원</th> -->
	<!-- 						<th>입장</th> -->
	<!-- 						<th>삭제</th> -->
	<!-- 						<th>수정</th> -->
	<!-- 					</tr> -->
	<!-- 				</thead> -->

	<!-- 				<tbody> -->
	<%-- 					<c:if test="${list.size() < 1}"> --%>
	<!-- 						<tr> -->
	<!-- 							<td colspan="9">등록 된 개인 대결이 없습니다</td> -->
	<!-- 						</tr> -->
	<%-- 					</c:if> --%>
	<%-- 					<c:forEach items="${list}" var="item" varStatus="status"> --%>
	<!-- 						<tr> -->
	<%-- 							<td>${list.size() - status.index}</td> --%>
	<%-- 							<td>${item.maker}</td> --%>
	<%-- 							<td>${item.title}</td> --%>
	<%-- 							<td>${item.time}</td> --%>
	<%-- 							<td>${item.loc}</td> --%>
	<%-- 							<td>${item.recruit}</td> --%>
	<%-- 							<td><a href="view/${item.game_code}">입장${game_code}</a></td> --%>
	<!-- 							<td> -->
	<%-- 								<c:if test="${item.member_code eq sessionScope.member.member_code}"> --%>
	<%-- 									<a href="delete/${item.game_code}" style="text-decoration:none">삭제</a> --%>
	<%-- 								</c:if> --%>
	<!-- 							</td> -->
	<!-- 							<td> -->
	<%-- 								<c:if test="${item.member_code eq sessionScope.member.member_code}"> --%>
	<%-- 									<a href="update/${item.game_code}" style="text-decoration:none">수정</a> --%>
	<%-- 								</c:if> --%>
	<!-- 							</td> -->
	<!-- 						</tr> -->
	<%-- 					</c:forEach> --%>
	<!-- 				</tbody> -->
	<!-- 			</table> -->
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<a href="add">등록</a> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<jsp:include page="../font.jsp"></jsp:include>
	<jsp:include page="../nav.jsp"></jsp:include>
	<jsp:include page="../rnav.jsp"></jsp:include>

	<section>
		<div class="clanAll">
			<div class="clanrankSearch">
				<div class="clanrankSearch1200">
					<div class="clanrankSearch_01">
						<div class="clanrankSearch_01_02">
							<a href="/clanGame/list">클랜 대결신청</a>
						</div>
						<div class="clanrankSearch_01_01">
							<a href="/game/list">개인 대결신청</a>
						</div>
					</div>
					<form method="get" action="" id="search" class="clanrankSearch_02">
						<div class="zmffos">
							<p style="margin-right: 1em;">search</p>
							<div class="clanrankSearch_02_01">
								<input type="text" name="keyword" placeholder="제목을 입력해 주세요">
								<button class="clanrankSearch_02_02" type="submit">
									<img src="/resources/img/premium.png" alt="돋보기" width="55%">
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>

			<div class="personalvs01">
				<div class="personalvs01_01">
					<img src="/resources/img/vs.png" alt="vs">
				</div>
				<div class="personalvs01_02">
					<div class="personalvs01_02_01">
						<h1>클랜 대결 신청</h1>
					</div>
					<div class="personalvs01_02_02">
						<p>클랜 대결을 자유롭게 신청할 수 있는 게시판 입니다.</p>
					</div>
				</div>
			</div>

			<div class="personalvs02">
				<table class="personalvs02_01">
					<colgroup>
						<col style="width: 10%;">
						<col style="width: 25%;">
						<col style="width: 20%;">
						<col style="width: 20%;">
						<col style="width: 15%;">
						<col style="width: 10%;">
					</colgroup>
					<thead>
						<tr>
							<th>No.</th>
							<th>제목</th>
							<th>작성클랜</th>
							<th>클랜티어</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${list.size() < 1}">
							<tr>
								<td colspan="5">신청 할 수 있는 대결이 없습니다.</td>
							</tr>
						</c:if>
						<c:forEach items="${list}" var="item" varStatus="status">
							<tr>
								<td>${pager.offset + status.count}</td>
								<td><a style="color: #000;" href="view/${item.clan_game_code}">${item.title}</a></td>
								<td>${item.clan_name}</td>
								<td>${item.clan_score}</td>
								<td><fmt:formatDate value="${item.time}" type="date" pattern="YYYY.MM.dd"/></td>
								<td>10</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
			<div class="cbtn0">
				<div class="cbtn1">
					<a href="add">등록</a>
				</div>
			</div>
			<div class="pagination">
				<div class="paginate">
					<a href="?page=1" class="pagebtn link arrow start prev"
						data-page="1">처음 페이지</a> <a
						href="?page=${pager.prev }&${pager.query}" class="link arrow prev"
						data-page="1">이전 페이지</a>
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

		<div class="wh"></div>
	</section>


	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="/resources/js/index.js"></script>
</body>
</html>