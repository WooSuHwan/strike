<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/personalrank.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://www.w3schools.com/lib/w3.js"></script>
</head>
<body>
	<jsp:include page="../font.jsp"></jsp:include>
	<jsp:include page="../nav.jsp"></jsp:include>
	<section>
		<div class="clanAll">
			<div class="clanrankSearch">
				<div class="clanrankSearch1200">
					<div class="clanrankSearch_01">
						<h2>Personal Rank</h2>
					</div>
					<form method="get" action="" id="search" class="clanrankSearch_02">
						<div class="zmffos">
							<p style="margin-right: 1em;">search</p>
							<div class="clanrankSearch_02_01">
								<input type="text" name="keyword" placeholder="이름을 입력해 주세요">
								<button class="clanrankSearch_02_02" type="submit">
									<img src="/resources/img/premium.png" alt="돋보기" width="55%">
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>

			<div class="clanbanner">
				<img alt="배너" width="100%" src="/resources/img/personalrank.jpg">
				<div class="clanbanner_01">
					<h1>개인 순위표</h1>
					<div class="Cbar"></div>
				</div>
			</div>

			<div class="clanRtable">
				<table class="clanRtable_01">
					<colgroup>
						<col style="width: 10%;">
						<col style="width: 15%;">
						<col style="width: 15%;">
						<col style="width: 10%;">
						<col style="width: 10%;">
						<col style="width: 10%;">
						<col style="width: 10%;">
						<col style="width: 10%;">
					</colgroup>
					<thead>
						<tr>
							<th>순위</th>
							<th>이름</th>
							<th>티어</th>
							<th>전적</th>
							<th>승</th>
							<th>패</th>
							<th>무</th>
							<th>승률</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="item" varStatus="status">
							<tr>
								<td>${pagerMember.offset + status.count}</td>
								<td>${item.name}</td>
								<td>${item.tier}</td> <!-- 랭크 -->
								<td>${item.record}</td>
								<td>${item.win}</td>
								<td>${item.lose}</td>
								<td>${item.draw}</td>
								<td>${item.percent}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="pagination">
				<div class="paginate">
					<a href="?page=1" class="pagebtn link arrow start prev"
						data-page="1">처음 페이지</a> <a
						href="?page=${pagerMember.prev }&${pagerMember.query}" class="link arrow prev"
						data-page="1">이전 페이지</a>
					<c:forEach var="page" items="${pagerMember.list}">
						<a href="?page=${page}&${pagerMember.query}"
							class="link now${page == pagerMember.page ? '': 'active' }">${page}</a>
					</c:forEach>
					<a href="?page=${pagerMember.next }&${pagerMember.query}"
						class="pagebtn link arrow next" data-page="9">다음 페이지</a> <a
						href="?page=${pagerMember.last}" class="pagebtn link arrow last next"
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