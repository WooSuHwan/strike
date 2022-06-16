<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/personalVs.css">
<link rel="stylesheet" href="/resources/css/franchisee/franchiseeIndex.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://www.w3schools.com/lib/w3.js"></script>
</head>
<body>
	<jsp:include page="../font.jsp"></jsp:include>
	<jsp:include page="../franchiseeNav.jsp"></jsp:include>

	<section>
		<div class="clanAll">
		   <div class="clanrankSearch">
                <div class="clanrankSearch1200">
                    <div class="clanrankSearch_01">
                        <h2>개인전 경기 목록</h2>
                    </div>
                </div>
            </div>
			<div class="personalvs01">
				<div class="personalvs01_01">
					<img src="/resources/img/vs.png" alt="vs">
				</div>
				<div class="personalvs01_02">
					<div class="personalvs01_02_01">
						<h1>개인 경기 목록</h1>
					</div>
					<div class="personalvs01_02_02">
						<p>개인전 경기 목록입니다.</p>
					</div>
				</div>
			</div>

			<div class="personalvs02">
				<table class="personalvs02_01">
					<colgroup>
						<col style="width: 10%;">
						<col style="width: 15%;">
						<col style="width: 30%;">
						<col style="width: 20%;">
						<col style="width: 10%;">
						<col style="width: 10%;">
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>작성자</th>
							<th>제목</th>
							<th>시간</th>
							<th>모집인원</th>
							<th>입장</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${game.size() < 1}">
							<tr>
								<td colspan="9">등록 된 개인 대결이 없습니다</td>
							</tr>
						</c:if>
						<c:forEach items="${game}" var="item" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${item.maker}</td>
							<td>${item.title}</td>
							<td>${item.clock}</td>
							<td>${item.recruit}</td>
							<td><a href="/franchiseePage/gameView/${item.game_code} "style="text-decoration:none">입장</a></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<div class="wh"></div>
	</section>
</body>
</html>
