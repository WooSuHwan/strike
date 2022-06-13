<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                        <div class="proName">${sessionScope.member.name } </div><div class="proName2">&nbsp;님</div>
                    </div>
            </div>

                <div class="navList">
                <div class="navListDiv">
                    <div class="navListDivName"><a href="../update/${sessionScope.member.member_code}">내 정보 관리</a></div>
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
                    <div class="navListDivName"><a href="../gameDetail/${sessionScope.member.member_code}">신청내역</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="../mypageFreeList/${sessionScope.member.member_code}">내가 쓴 글</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="../delete">회원탈퇴</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="/mypage/mypage/${sessionScope.member.member_code}">마이페이지 홈</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                </div>
            </div>
            
        </div>

            <div class="recordMain">
                <div class="recordMainTitle">
                    개인 / 클랜 전적 확인
                </div> 
                <div class="detailsTitle">
	                <a href="../mypageRecord/${sessionScope.member.member_code}">
	                	<div class="titleDiv">
	                		개인 대결 전적
	                	</div>
	                </a>
	                <a href="../mypageClanRecord/${sessionScope.member.member_code}">
	                	<div class="titleDiv TD">
	                		클랜 대결 전적
	                	</div>
	                </a>
                </div>
				<c:forEach items="${mypageClanRecord}" var="item" varStatus="status">
					<c:if test="${item.winner_code eq sessionScope.member.clan_code}">
						<div class="recordMainList rankRulstBackWin">
			                    <div class="listLine">
			                        <div class="listLineDate">
			                            <fmt:formatDate value="${item.time_end}" type="date" pattern="YYYY.MM.dd"/>
			                        </div>
			                        <div class="listLineName">
			                            클랜전
			                        </div>
			                    </div>
			
			                    <div class="winOrLose">
			                        win or lose
			                    </div>
			
			                    <div class="listScore">
			                    
			                    <c:if test="${item.clan_maker_code == sessionScope.member.clan_code }">
			                        <div>
			                            ${item.clan_name}
			                        </div>
			                        <div class="WOL">
			                            <div class="rankRulstFontWin">
			                                승
			                            </div>
			                            <div>
			                                :
			                            </div>
			                            <div class="rankRulstFontlose">
			                                패
			                            </div>
			                        </div>
			                        <div>
			                           ${item.clan_challenger_name}
			                        </div>
			                    </c:if>
			                    
			                    <c:if test="${item.clan_challenger_code == sessionScope.member.clan_code }">
			                        <div>
			                           	${item.clan_challenger_name}
			                        </div>
			                        <div class="WOL">
			                            <div class="rankRulstFontWin">
			                                승
			                            </div>
			                            <div>
			                                :
			                            </div>
			                            <div class="rankRulstFontlose">
			                                패
			                            </div>
			                        </div>
			                        <div>
			                            ${item.clan_name}
			                        </div>
			                    </c:if>
			                    </div>
			                </div>
					</c:if>
					
					<c:if test="${item.loser_code == sessionScope.member.clan_code}"> 
							<div class="recordMainList rankRulstBackLose">
								<div class="listLine">
									<div class="listLineDate"><fmt:formatDate value="${item.time_end}" type="date" pattern="YYYY.MM.dd"/></div>
									<div class="listLineName">클랜전</div>
								</div>

								<div class="winOrLose">win or lose</div>

								<div class="listScore">
									<c:if test="${item.clan_maker_code == sessionScope.member.clan_code }">
			                        <div>
			                            ${item.clan_name}
			                        </div>
			                        <div class="WOL">
			                            <div class="rankRulstFontlose">
			                                패
			                            </div>
			                            <div>
			                                :
			                            </div>
			                            <div class="rankRulstFontWin">
			                                승
			                            </div>
			                        </div>
			                        <div>
			                           ${item.clan_challenger_name}
			                        </div>
			                    </c:if>
			                    
			                    <c:if test="${item.clan_challenger_code == sessionScope.member.clan_code }">
			                        <div>
			                           	${item.clan_challenger_name}
			                        </div>
			                        <div class="WOL">
			                            <div class="rankRulstFontlose">
			                                패
			                            </div>
			                            <div>
			                                :
			                            </div>
			                            <div class="rankRulstFontWin">
			                                승
			                            </div>
			                        </div>
			                        <div>
			                            ${item.clan_name}
			                        </div>
			                    </c:if>
								</div>
							</div>
						</c:if>

					<c:if test="${item.draw == 1 and item.clan_maker_code == sessionScope.member.clan_code}"> 
						<c:if test="${item.draw == 1 and item.clan_challenger_code == sessionScope.member.clan_code}"> 
								<div class="recordMainList rankRulstBackDraw">
									<div class="listLine">
										<div class="listLineDate"><fmt:formatDate value="${item.time_end}" type="date" pattern="YYYY.MM.dd"/></div>
										<div class="listLineName">클랜전</div>
									</div>
	
									<div class="winOrLose">win or lose</div>
	
									<div class="listScore">
										<c:if test="${item.clan_maker_code == sessionScope.member.clan_code }">
				                        <div>
				                            ${item.clan_name}
				                        </div>
				                        <div class="WOL">
				                             <div>
												<div class="draw">무승부</div>
											</div>
				                        </div>
				                        <div>
				                           ${item.clan_challenger_name}
				                        </div>
				                    </c:if>
				                    
				                    <c:if test="${item.clan_challenger_code == sessionScope.member.clan_code }">
				                        <div>
				                           	${item.clan_challenger_name}
				                        </div>
				                        <div class="WOL">
					                        <div>
												<div class="draw">무승부</div>
											</div>
				                        </div>
				                        <div>
				                            ${item.clan_name}
				                        </div>
				                    </c:if>
									</div>
								</div>
							</c:if>
						</c:if>
				</c:forEach>
			</div>
        </div>
    </div>
     <!-- script -->
   	<jsp:include page="../footer.jsp"></jsp:include>
    <script src="/resources/js/index.js"></script>
    </body>
    </html>