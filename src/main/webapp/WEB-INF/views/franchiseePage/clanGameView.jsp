<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>
<link rel="stylesheet" href="/resources/css/font.css">
    <link rel="stylesheet" href="/resources/css/personaldetails.css">
    <link rel="stylesheet" href="/resources/css/franchisee/franchiseeIndex.css">
</head>
<body>
<jsp:include page="../font.jsp"></jsp:include>
<jsp:include page="../franchiseeNav.jsp"></jsp:include>

<section>
		<div class="clanAll">
			<div class="clanrankSearch">
				<div class="clanrankSearch1200">
					<div class="clanrankSearch_01">
						<h2>클랜전 경기 결과 등록</h2>
					</div>
				</div>
			</div>
		<div class="vspost">
			<div class="vspost_01">
                <h3>대결 신청 게시글</h3>
            </div>
            <div class="vspost_02">
                    <div class="vspost_02_01">
                        <h1>${clanGame.title}</h1>
                    </div>
                    <div class="vspost_02_02">
                        <div class="vspost_02_txt">
                            <h2>${clanGame.clan_name}</h2>
                        </div>
                        <div class="vspost_02_date">
                            <div class="vspost_02_date01">
                                <p><fmt:formatDate value="${clanGame.time}" pattern="yyyy-MM-dd" /></p>
                            </div>
                        </div>
		</div>	
		            <div class="vspost_02_03">
                        <div class="vpostCo01">
                            <p>[ ${clanGame.loc} ] 에서 개인 대결하실 분 찾아요</p>
                        </div>
                        <div class="vpostCo01">
                            <p>시간 :  ${clanGame.clock}</p>
                        </div>
                        <div class="vpostCo01">
                            <p>위치 :${clanGame.loc}</p>
                        </div>
                        <div class="vpostCo01">
                            <p>모집인원 : ${clanGame.clan_recruit}명</p>
                        </div>
                        <div class="vpostCo01">
                            <p>주의사항(내용) : ${clanGame.story}</p>
                        </div>
                    </div>
		
		</div>
		</div>
			
		<div class="applicant">
			<div class="applicant_01">
               <h3>처리한 대결 목록</h3>
            </div>

			<div class="applicant_02">
                <table class="applicanttable">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 10%;">
                        <col style="width: 8%;">
                        <col style="width: 8%;">
                        <col style="width: 8%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                    </colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>게임기록번호</th>
							<th>만든이코드</th>
							<th>만든이</th>
							<th>상태</th>
							<th>VS</th>
							<th>상태</th>
							<th>도전자</th>
							<th>도전자 코드</th>
						</tr>
					</thead>

					<tbody>
						<c:if test="${clanGameRecordEnd.size() < 1}">
							<tr>
								<td colspan="9">등록 된 개인 대결이 없습니다</td>
							</tr>
						</c:if>
						<c:forEach items="${clanGameRecordEnd}" var="item"
							varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td>${item.clan_game_record_code}</td>
								<td>${item.clan_maker_code}</td>
								<td>${item.clan_name}</td>
								<c:choose>
									<c:when test="${item.winner_code eq item.clan_maker_code}">
										<td>승리</td>
									</c:when>
									<c:when test="${item.loser_code eq item.clan_maker_code}">
										<td>패배</td>
									</c:when>
									<c:when test="${item.draw eq 1}">
										<td>무승부</td>
									</c:when>
								</c:choose>
								<td>VS</td>
								<c:choose>
									<c:when test="${item.winner_code eq item.challenger_clan_code}">
										<td>승리</td>
									</c:when>
									<c:when test="${item.loser_code eq item.challenger_clan_code}">
										<td>패배</td>
									</c:when>
									<c:when test="${item.draw eq 1}">
										<td>무승부</td>
									</c:when>
								</c:choose>
								<td>${item.clan_challenger_name}</td>
								<td>${item.challenger_clan_code}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			</div>

	<div class="applicant">
			 <div class="applicant_01">
                    <h3>대기중인 대결 리스트</h3>
                </div>

			<div class="applicant_02">
                    <table class="applicanttable">
                        <colgroup>
                            <col style="width: 10%;">
                            <col style="width: 15%;">
                            <col style="width: 10%;">
                            <col style="width: 8%;">
                            <col style="width: 8%;">
                            <col style="width: 8%;">
                            <col style="width: 10%;">
                        </colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>게임기록번호</th>
							<th>무승부</th>
							<th>만든이코드</th>
							<th>만든이</th>
							<th>도전자 코드</th>
							<th>도전자</th>
						</tr>
					</thead>

					<tbody>
						<c:if test="${clanGameRecord.size() < 1}">
							<tr>
								<td colspan="7">등록 된 개인 대결이 없습니다</td>
							</tr>
						</c:if>
						<c:forEach items="${clanGameRecord}" var="item" varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td>${item.clan_game_record_code}</td>
								<td><a
									href="../clanDraw/${item.clan_game_code}/${item.clan_game_record_code}/${item.clan_maker_code}/${item.challenger_clan_code}">무승부</a>
								<td>${item.clan_maker_code}</td>
								<td><a
									href="../clanMakerWin/${item.clan_game_code}/${item.clan_game_record_code}/${item.clan_maker_code}/${item.challenger_clan_code}">${item.clan_name}</a></td>
								<td>${item.challenger_clan_code}</td>
								<td><a
									href="../clanChallengerWin/${item.clan_game_code}/${item.clan_game_record_code}/${item.challenger_clan_code}/${item.clan_maker_code}">${item.clan_challenger_name}</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			</div>
		</div>
		 <div class="wh"></div>
	</section>
</body>
</html>