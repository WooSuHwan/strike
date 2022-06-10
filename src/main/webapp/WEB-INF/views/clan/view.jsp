<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/clanrankdetails.css">
<link rel="stylesheet" href="/resources/css/index.css">
</head>
<body>
	<jsp:include page="../font.jsp"></jsp:include>
	<jsp:include page="../nav.jsp"></jsp:include>
	<section>
		<div class="clanAll">
			<div class="clanrankSearch">
				<div class="clanrankSearch1200">
					<div class="clanrankSearch_01">
						<h2>Clan Rank</h2>
					</div>
				</div>
			</div>

			<div class="clanRdetails01">
				<div class="cdetail01">
					<div class="cdetail01_01">
						<img src="/resources/img/clandetailsicon.png" alt="아이콘">
					</div>
					<div class="cdetail01_02">
						<div class="cdetail01_02_01">
							<h1>${clan.clan_name}</h1>
						</div>
						<div class="cdetail01_02_02">
							<a href="clanrankdetails.html">최신정보</a>
						</div>
					</div>
				</div>
				<div class="cdetail02">
					<div class="cdetail02_01">
						<h3>상세</h3>
					</div>
				</div>
			</div>

			<div class="newRecord">
				<div class="newRecord01">
					<h3>최근 전적</h3>
				</div>
				<div class="newRecord02">
					<div class="newRecord02_01">
						<p>
							승 <span>${clan.clan_win}</span>
						</p>
					</div>
					<div class="newRecord02_02">
						<p>
							패 <span>${clan.clan_lose}</span>
						</p>
					</div>
					<div class="newRecord02_03">
						<p>
							무 <span>${clan.clan_draw}</span>
						</p>
					</div>
					<div class="newRecord02_04">
						<p>
							승률 <span>${clan.clan_rate}</span>
						</p>
					</div>
				</div>
			</div>

			<div class="clanRdetails02">
				<div class="clanRdetails02_01">
					<div class="clanRdetails02_01_01">
						<h3>클랜원 구성 (인원)</h3>
					</div>
					<div class="clanRdetails02_01_02">
						<p>
							총 인원 <span>6 </span>명
						</p>
					</div>
				</div>
				<div class="clanRdetails02_02">
					<div class="clanRdetails02_02_01">
						<div class="clanRdetails02_02_01_01">
							<h3>클랜장</h3>
						</div>
						<div class="clanRdetails02_02_01_02">
							<h3>${clan.clan_master_code }</h3>
						</div>
					</div>
					<div class="clanRdetails02_02_02">
						<div class="clanRdetails02_02_01_01">
							<h3>클랜원</h3>
						</div>
						<div class="clanRdetails02_02_01_02">
							<c:if test="${clanMember.size() < 1}">
								<div class="zmffosdnjs">
									<p>등록 된 클랜원이 없습니다</p>
								</div>
							</c:if>
							<c:forEach items="${clanMember}" var="item" varStatus="status">
								<h3>${item.name}, &nbsp;</h3>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>

			<div class="applicant">
				<div class="applicant_01">
					<h3>클랜원</h3>
				</div>
				<div class="applicant_02">
					<table class="applicanttable">
						<colgroup>
							<col style="width: 10%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
							<col style="width: 10%;">
							<col style="width: 10%;">
							<col style="width: 10%;">
							<col style="width: 10%;">
							<col style="width: 10%;">
							<col style="width: 10%;">
						</colgroup>
						<thead>
							<tr>
								<th>No.</th>
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
							<c:if test="${clanMember.size() < 1}">
								<tr>
									<td colspan="8">등록 된 클랜원이 없습니다</td>
								</tr>
							</c:if>
							<c:forEach items="${clanMember}" var="item" varStatus="status">
								<tr>
									<td>${status.count}</td>
									<td>${item.name}</td>
									<td>${item.score}</td>
									<td>${item.record}</td>
									<td>${item.win}</td>
									<td>${item.lose}</td>
									<td>${item.draw}</td>
									<td>${item.rate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

			<div class="applicant">
				<div class="applicant_01">
					<h3>클랜원 신청 대기</h3>
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
								<th>No.</th>
								<th>이름</th>
								<th>티어</th>
								<th>전적</th>
								<th>승</th>
								<th>패</th>
								<th>무</th>
								<th>승률</th>
								<th>상태</th>
								<c:forEach items="${view}" var="item" varStatus="status">
									<c:if
										test="${item.member_code eq sessionScope.member.member_code}">
										<th style="border-right: none;">승인</th>
									</c:if>
								</c:forEach>
							</tr>
						</thead>
						<tbody>
							<c:if test="${wait.size() < 1}">
								<tr>
									<td colspan="10">등록 된 신청자가 없습니다</td>
								</tr>
							</c:if>
							<c:forEach items="${wait}" var="item" varStatus="status">
								<tr>
									<td>${status.count}</td>
									<td>${item.name}</td>
									<td>${item.score}</td>
									<td>${item.record}</td>
									<td>${item.win}</td>
									<td>${item.lose}</td>
									<td>${item.draw}</td>
									<td>${item.rate}</td>
									<c:choose>
										<c:when test="${item.state ne 1}">
											<td>승인대기</td>
										</c:when>
									</c:choose>
									<c:if
										test="${item.clan_master_code eq sessionScope.member.member_code}">
										<td><a
											href="../permission/${clan_code}/${item.clan_member_code}"
											style="text-decoration: none">승인</a></td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="applicant_03">
					<a href="../application/${clan_code}/${sessionScope.member.member_code}">신청</a>
				</div>
			</div>



			<!--             <div class="clanRdetails02"> -->
			<!--                 <div class="clanRdetails02_01"> -->
			<!--                     <div class="clanRdetails02_01_01"> -->
			<!--                         <h3>클랜원 구성 (인원)</h3> -->
			<!--                     </div> -->
			<!--                     <div class="clanRdetails02_01_02"> -->
			<!--                         <p>총 인원 <span>6 </span>명</p> -->
			<!--                     </div> -->
			<!--                 </div> -->
			<!--                 <div class="clanRdetails02_02"> -->
			<%-- 					<c:if test="${clanMember.size() < 1}"> --%>
			<!-- 						<tr> -->
			<!-- 							<td colspan="8">등록 된 클랜원이 없습니다</td> -->
			<!-- 						</tr> -->
			<%-- 					</c:if> --%>
			<%--                     <c:forEach items="${clanMember}" var="item" varStatus="status"> --%>
			<!-- 						<tr> -->
			<%-- 							<td>${status.count}</td> --%>
			<%-- 							<td>${item.name}</td> --%>
			<%-- 							<td>${item.score}</td> --%>
			<%-- 							<td>${item.record}</td> --%>
			<%-- 							<td>${item.win}</td> --%>
			<%-- 							<td>${item.lose}</td> --%>
			<%-- 							<td>${item.draw}</td> --%>
			<%-- 							<td>${item.rate}</td> --%>
			<!-- 						</tr> -->
			<!--                     <div class="clanRdetails02_02_01"> -->
			<!--                         <div class="clanRdetails02_02_01_01"> -->
			<!--                             <h3>클랜장</h3> -->
			<!--                         </div> -->
			<!--                         <div class="clanRdetails02_02_01_02"> -->
			<%--                             <h3>${item.clan_master_code }</h3> --%>
			<!--                         </div> -->
			<!--                     </div> -->
			<!--                     <div class="clanRdetails02_02_02"> -->
			<!--                         <div class="clanRdetails02_02_01_01"> -->
			<!--                             <h3>클랜원</h3> -->
			<!--                         </div> -->
			<!--                         <div class="clanRdetails02_02_01_02"> -->
			<%--                             <h3>${item.name}</h3> --%>
			<!--                         </div> -->
			<!--                     </div> -->
			<%--  					</c:forEach> --%>
			<!--                 </div> -->
			<!--             </div> -->

			<!--             <div class="clanRdetails03"> -->
			<!--                 <div class="clanRdetails03_01"> -->
			<!--                     <h3>최근경기내역</h3> -->
			<!--                 </div> -->
			<!--                 <div class="clanRdetails03_02"> -->
			<!--                     <div class="clanRdetails03_02_01"> -->
			<!--                         <div class="clanRdetails03_02_01_01"> -->
			<!--                             <div class="clanRdetails03_02_01_01_01"> -->
			<!--                                 <p>2022.05.16</p> -->
			<!--                             </div> -->
			<!--                             <div class="clanRdetails03_02_01_01_02"> -->
			<!--                                 <p>클랜전</p> -->
			<!--                             </div> -->
			<!--                         </div> -->

			<!--                         <div class="clanRdetails03_02_01_02"> -->
			<!--                             <div class="winorlose01"> -->
			<!--                                 <h2>win or lose</h2> -->
			<!--                             </div> -->
			<!--                             <div class="winorlose02"> -->
			<!--                                 <div class="winorlose02in01"> -->
			<!--                                     <h1>홍길동</h1> -->
			<!--                                 </div> -->
			<!--                                 <div class="winorlose02in02"> -->
			<!--                                     <div class="winlose01"> -->
			<!--                                         <h1>승</h1> -->
			<!--                                     </div> -->
			<!--                                     <div class="winlose02"> -->
			<!--                                         <h1>:</h1> -->
			<!--                                     </div> -->
			<!--                                     <div class="winlose03"> -->
			<!--                                         <h1>패</h1> -->
			<!--                                     </div> -->
			<!--                                 </div> -->
			<!--                                 <div class="winorlose02in03"> -->
			<!--                                     <h1>신짱구</h1> -->
			<!--                                 </div> -->
			<!--                             </div> -->
			<!--                         </div> -->
			<!--                     </div> -->
			<!--                 </div> -->
			<!--             </div> -->


			<!-- 	<div> -->
			<%-- 		<h1>${clan.clan_name}</h1> --%>
			<!-- 	</div> -->

			<!-- 	<div> -->
			<!-- 		<h3>최근 전적</h3> -->
			<!-- 	</div> -->

			<!-- 	<div> -->
			<%-- 		<h3>승 : ${clan.clan_win}</h3> --%>
			<!-- 	</div> -->
			<!-- 	<div> -->
			<%-- 		<h3>패 : ${clan.clan_lose}</h3> --%>
			<!-- 	</div> -->
			<!-- 	<div> -->
			<%-- 		<h3>무 : ${clan.clan_draw}</h3> --%>
			<!-- 	</div> -->
			<!-- 	<div> -->
			<%-- 		<h3>승률 : ${clan.clan_rate}</h3> --%>
			<!-- 	</div> -->

			<!-- 	<div> -->
			<!-- 		<h3>클랜원 구성(인원)</h3> -->
			<!-- 	</div> -->
			<!-- 	<div> -->
			<!-- 		<div> -->
			<!-- 			<table border="1"> -->
			<!-- 				<thead> -->
			<!-- 					<tr> -->
			<!-- 						<th>번호</th> -->
			<!-- 						<th>이름</th> -->
			<!-- 						<th>티어</th> -->
			<!-- 						<th>전적</th> -->
			<!-- 						<th>승</th> -->
			<!-- 						<th>패</th> -->
			<!-- 						<th>무</th> -->
			<!-- 						<th>승률</th> -->
			<!-- 					</tr> -->
			<!-- 				</thead> -->

			<!-- 				<tbody> -->
			<%-- 					<c:if test="${clanMember.size() < 1}"> --%>
			<!-- 						<tr> -->
			<!-- 							<td colspan="8">등록 된 클랜원이 없습니다</td> -->
			<!-- 						</tr> -->
			<%-- 					</c:if> --%>
			<%-- 					<c:forEach items="${clanMember}" var="item" varStatus="status"> --%>
			<!-- 						<tr> -->
			<%-- 							<td>${status.count}</td> --%>
			<%-- 							<td>${item.name}</td> --%>
			<%-- 							<td>${item.score}</td> --%>
			<%-- 							<td>${item.record}</td> --%>
			<%-- 							<td>${item.win}</td> --%>
			<%-- 							<td>${item.lose}</td> --%>
			<%-- 							<td>${item.draw}</td> --%>
			<%-- 							<td>${item.rate}</td> --%>
			<!-- 						</tr> -->
			<%-- 					</c:forEach> --%>
			<!-- 				</tbody> -->
			<!-- 			</table> -->
			<!-- 		</div> -->
			<!-- 	</div> -->

			<!-- 	<div> -->
			<!-- 		<h3>클랜원 신청 대기열</h3> -->
			<!-- 	</div> -->
			<!-- 	<div> -->
			<!-- 		<div> -->
			<!-- 			<table border="1"> -->
			<!-- 				<thead> -->
			<!-- 					<tr> -->
			<!-- 						<th>번호</th> -->
			<!-- 						<th>이름</th> -->
			<!-- 						<th>티어</th> -->
			<!-- 						<th>전적</th> -->
			<!-- 						<th>승</th> -->
			<!-- 						<th>패</th> -->
			<!-- 						<th>무</th> -->
			<!-- 						<th>승률</th> -->
			<!-- 						<th>상태</th> -->
			<!-- 						<th>승인</th> -->
			<!-- 					</tr> -->
			<!-- 				</thead> -->

			<!-- 				<tbody> -->
			<%-- 					<c:if test="${wait.size() < 1}"> --%>
			<!-- 						<tr> -->
			<!-- 							<td colspan="10">등록 된 신청자가 없습니다</td> -->
			<!-- 						</tr> -->
			<%-- 					</c:if> --%>
			<%-- 					<c:forEach items="${wait}" var="item" varStatus="status"> --%>
			<!-- 						<tr> -->
			<%-- 							<td>${status.count}</td> --%>
			<%-- 							<td>${item.name}</td> --%>
			<%-- 							<td>${item.score}</td> --%>
			<%-- 							<td>${item.record}</td> --%>
			<%-- 							<td>${item.win}</td> --%>
			<%-- 							<td>${item.lose}</td> --%>
			<%-- 							<td>${item.draw}</td> --%>
			<%-- 							<td>${item.rate}</td> --%>
			<%-- 							<c:choose> --%>
			<%-- 								<c:when test="${item.state ne 1}"><td>승인대기</td></c:when> --%>
			<%-- 								<c:when test="${item.state eq 1}"><td>승인완료</td></c:when> --%>
			<%-- 							</c:choose> --%>
			<!-- 							<td> -->
			<%-- 								<c:if test="${item.clan_master_code eq sessionScope.member.member_code}"> --%>
			<%-- 									<a href="../permission/${clan_code}/${item.clan_member_code}" style="text-decoration:none">승인</a> --%>
			<%-- 								</c:if> --%>
			<!-- 							</td> -->
			<!-- 						</tr> -->
			<%-- 					</c:forEach> --%>
			<!-- 				</tbody> -->
			<!-- 			</table> -->
			<!-- 		</div> -->
			<%-- 		<c:if test="${game.member_code ne sessionScope.member.member_code}"> --%>
			<!-- 			<div> -->
			<%-- 				<a href="../application/${clan_code}/${sessionScope.member.member_code}">신청</a> --%>
			<!-- 			</div> -->
			<%-- 		</c:if> --%>
			<!-- 	</div> -->

			<div class="wh"></div>

			<jsp:include page="../footer.jsp"></jsp:include>
			<script src="/resources/js/index.js"></script>
	</section>


</body>
</html>