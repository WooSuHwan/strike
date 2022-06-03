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
                            <a href="#">최신정보</a>
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
                <c:forEach items="${member}" var="item" varStatus="status">
                <div class="newRecord02">
                    <div class="newRecord02_01">
                        <p>승 <span>${item.win}</span></p>
                    </div>
                    <div class="newRecord02_02">
                        <p>패 <span>${item.lose}</span></p>
                    </div>
                    <div class="newRecord02_03">
                        <p>무 <span>${item.draw}</span></p>
                    </div>
                    <div class="newRecord02_04">
                        <p>승률 <span>${item.rate}</span></p>
                    </div>
                    <div class="newRecord02_05">
                        <p>티어 <span>PLATINUM</span></p>
                    </div>
                </div>
                </c:forEach>
            </div>

            <div class="vspost">
                <div class="vspost_01">
                    <h3>대결 신청 게시글</h3>
                </div>
               
                <div class="vspost_02">
                    <div class="vspost_02_01">
                        <h1>${game.title}</h1>
                    </div>
                    <div class="vspost_02_02">
                        <div class="vspost_02_txt">
                            <h2>${game.maker}</h2>
                        </div>
                        <div class="vspost_02_date">
                            <div class="vspost_02_date01">
                                <p>${game.time}</p>
                            </div>
                            <div class="vspost_02_date02">
                                <p>조회 56</p>
                            </div>
                        </div>
                    </div>
                    <div class="vspost_02_03">
                        <div class="vpostCo01">
                            <p>[ ${game.loc} ] 에서 개인 대결하실 분 찾아요</p>
                        </div>
                        <div class="vpostCo01">
                            <p>시간 :  ${game.clock}</p>
                        </div>
                        <div class="vpostCo01">
                            <p>위치 : ${game.loc}</p>
                        </div>
                        <div class="vpostCo01">
                            <p>모집인원 : ${game.recruit}명</p>
                        </div>
                        <div class="vpostCo01">
                            <p>주의사항(내용) : ${game.story}</p>
                        </div>
                    </div>
                </div>
            </div>

				 <div class="applicant">
                <div class="applicant_01">
                    <h3>대결자</h3>
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
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${admitChallenger}" var="item" varStatus="status">
                            <tr>
                            	<td>${status.index + 1 }</td>
                                <td>${item.name}</td>
                                <td style="color: #ffb400;">${item.score}</td>
                                <td>${item.record}</td>
                                <td>${item.win}</td>
                                <td>${item.lose}</td>
                                <td>${item.draw}</td>
                                <td>${item.rate}</td>
                                <td>승인완료</td>
						</c:forEach>
                        </tbody>
                    </table>
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
                                <c:if test="${item.member_code eq sessionScope.member.member_code}">
                                	<th style="border-right: none;">승인</th>
                                </c:if>
                                </c:forEach>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${challenger}" var="item" varStatus="status">
                            <tr>
                            	<td>${status.index + 1 }</td>
                                <td>${item.name}</td>
                                <td style="color: #ffb400;">${item.score}</td>
                                <td>${item.record}</td>
                                <td>${item.win}</td>
                                <td>${item.lose}</td>
                                <td>${item.draw}</td>
                                <td>${item.rate}</td>
                                <c:choose>
                                <c:when test="${item.state ne 1}"><td>승인대기</td></c:when>
                                <c:when test="${item.state eq 1}"><td style="border-right: none; cursor: pointer;">승인</td></c:when>
                                </c:choose>
                                
								<c:if test="${game.member_code eq sessionScope.member.member_code}">
									<td><a href="../permission/${game_code}/${item.challenger_code}/${item.challenger_member_code}/${sessionScope.member.member_code}">승인</a></td>
								</c:if>
						</c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="applicant_03">
                    <a href="../challenge/${game_code}">신청</a>
                </div>
            </div>
</div>
        <div class="wh"></div>
    </section>        
     <jsp:include page="../footer.jsp"></jsp:include>
     <script src="/resources/js/index.js"></script>
</body>
</html>