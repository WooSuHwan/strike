<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>
<link rel="stylesheet" href="/resources/css/font.css">
    <link rel="stylesheet" href="/resources/css/personaldetails.css">
    <link rel="stylesheet" href="/resources/css/index.css">
</head>
<body>
<!-- 	<div> -->
<!-- 		<h1>최근 전적</h1> -->
<!-- 	</div> -->
	
<%-- 	<c:forEach items="${member}" var="item" varStatus="status"> --%>
<!-- 		<thead> -->
<!-- 			<tr> -->
<%-- 				<td>승 ${item.win}</td> --%>
<%-- 				<td>패 ${item.lose}</td> --%>
<%-- 				<td>무 ${item.draw}</td> --%>
<%-- 				<td>승률${item.rate}</td> --%>
<!-- 			</tr> -->
<!-- 		</thead> -->
<%-- 	</c:forEach> --%>
	
<!-- 	<div> -->
<!-- 		<h1>대결 신청 게시글</h1> -->
<!-- 	</div> -->
	
<%-- 	<c:forEach items="${view}" var="item" varStatus="status"> --%>
<!-- 		<div> -->
<%-- 			<h3>제목 : ${item.title}</h3> --%>
<!-- 		</div> -->
<!-- 		<div> -->
<%-- 			<h3>작성자 : ${item.maker}</h3> --%>
<!-- 		</div> -->
<!-- 		<div> -->
<%-- 			<h3>시간 : ${item.time}</h3> --%>
<!-- 		</div> -->
<!-- 		<div> -->
<%-- 			<h3>위치 : ${item.loc}</h3> --%>
<!-- 		</div> -->
<!-- 		<div> -->
<%-- 			<h3>모집인원 : ${item.recruit}명</h3> --%>
<!-- 		</div> -->
<!-- 		<div> -->
<%-- 			<h3>내용 : ${item.story}</h3> --%>
<!-- 		</div> -->
<%-- 	</c:forEach> --%>
	
<!-- 	<div> -->
<!-- 		<h1>신청자</h1> -->
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
<%-- 					<c:if test="${challenger.size() < 1}"> --%>
<!-- 						<tr> -->
<!-- 							<td colspan="10">등록 된 신청자가 없습니다</td> -->
<!-- 						</tr> -->
<%-- 					</c:if> --%>
<%-- 					<c:forEach items="${challenger}" var="item" varStatus="status"> --%>
<!-- 						<tr> -->
<%-- 							<td>${challenger.size() - status.index}</td> --%>
<%-- 							<td>${item.name}</td> --%>
<%-- 							<td>${item.tier}</td> --%>
<%-- 							<td>${item.record}</td> --%>
<%-- 							<td>${item.win}</td> --%>
<%-- 							<td>${item.lose}</td> --%>
<%-- 							<td>${item.draw}</td> --%>
<%-- 							<td>${item.rate}</td> --%>
<%-- 							<c:choose> --%>
<%-- 								<c:when test="${item.state ne 1}"><td>승인대기</td></c:when> --%>
<%-- 								<c:when test="${item.state eq 1}"><td>승인완료</td></c:when> --%>
<%-- 							</c:choose> --%>
<%-- 							<c:forEach items="${view}" var="item" varStatus="status"> --%>
<!-- 								<td> -->
<%-- 									<c:if test="${item.member_code eq sessionScope.member.member_code}"> --%>
<%-- 										<a href="../permission/${item.game_code}" style="text-decoration:none">승인</a> --%>
<%-- 									</c:if> --%>
<!-- 								</td> -->
<%-- 							</c:forEach> --%>
<!-- 						</tr> -->
<%-- 					</c:forEach> --%>
<!-- 				</tbody> -->
<!-- 			</table> -->
<!-- 		</div> -->
<!-- 		<div> -->
<%-- 			<a href="../challenge/${game_code}">신청</a> --%>
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
                        <h2>개인 대결 신청</h2>
                    </div>
                </div>
            </div>
        
            <div class="clanRdetails01">
                <div class="cdetail01">
                    <div class="cdetail01_02">
                        <div class="cdetail01_02_01">
                            <h1>strike</h1>
                        </div>
                        <div class="cdetail01_02_02">
                            <a href="clanrankdetails.html">최신정보</a>
                        </div>
                    </div>
                </div>
                <div class="cdetail02">
                    <div class="cdetail02_01">
                        <h3>정보</h3>
                    </div>
                </div>
            </div>

            <div class="newRecord">
                <div class="newRecord01">
                    <h3>최근 전적</h3>
                </div>
                <div class="newRecord02">
                    <div class="newRecord02_01">
                        <p>승 <span>20</span></p>
                    </div>
                    <div class="newRecord02_02">
                        <p>패 <span>10</span></p>
                    </div>
                    <div class="newRecord02_03">
                        <p>무 <span>1</span></p>
                    </div>
                    <div class="newRecord02_04">
                        <p>승률 <span>50%</span></p>
                    </div>
                    <div class="newRecord02_05">
                        <p>티어 <span>PLATINUM</span></p>
                    </div>
                </div>
            </div>

            <div class="vspost">
                <div class="vspost_01">
                    <h3>대결 신청 게시글</h3>
                </div>
                <div class="vspost_02">
                    <div class="vspost_02_01">
                        <h1>대전에서 개인전 대결하실 분 찾아요 ! </h1>
                    </div>
                    <div class="vspost_02_02">
                        <div class="vspost_02_txt">
                            <h2>홍길동</h2>
                        </div>
                        <div class="vspost_02_date">
                            <div class="vspost_02_date01">
                                <p>2022.05.16</p>
                            </div>
                            <div class="vspost_02_date02">
                                <p>조회 56</p>
                            </div>
                        </div>
                    </div>
                    <div class="vspost_02_03">
                        <div class="vpostCo01">
                            <p>[ 대전 볼링장 ] 에서 개인 대결하실 분 찾아요</p>
                        </div>
                        <div class="vpostCo01">
                            <p>시간 :  AM 09 ~ PM 12 까지</p>
                        </div>
                        <div class="vpostCo01">
                            <p>위치 : 대전 볼링장</p>
                        </div>
                        <div class="vpostCo01">
                            <p>모집인원 : 1명</p>
                        </div>
                        <div class="vpostCo01">
                            <p>주의사항 : 필요 장비는 직접 가지고 오셔야 합니다 !</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="applicant">
                <div class="applicant_01">
                    <h3>신청자</h3>
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
                                <th>이름</th>
                                <th>티어</th>
                                <th>전적</th>
                                <th>승</th>
                                <th>패</th>
                                <th>무</th>
                                <th>승률</th>
                                <th>상태</th>
                                <th style="border-right: none;">승인</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>홍길동</td>
                                <td style="color: #ffb400;">CHALLENGER</td>
                                <td>564</td>
                                <td>502</td>
                                <td>14</td>
                                <td>50</td>
                                <td>90%</td>
                                <td>승인대기</td>
                                <td style="border-right: none; cursor: pointer;">승인</td>
                            </tr>
                            <tr>
                                <td>홍길동</td>
                                <td style="color: #ffb400;">CHALLENGER</td>
                                <td>564</td>
                                <td>502</td>
                                <td>14</td>
                                <td>50</td>
                                <td>90%</td>
                                <td>승인대기</td>
                                <td style="border-right: none;  cursor: pointer;">승인</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="applicant_03">
                    <a href="#">신청</a>
                </div>
            </div>

        </div>

        <div class="wh"></div>
    </section>        
     <jsp:include page="../footer.jsp"></jsp:include>
     <script src="/resources/js/index.js"></script>
</body>
</html>