<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/font.css">
    <link rel="stylesheet" href="/resources/css/mypagedetails.css">
    <link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
</head>
<body>
    <jsp:include page="../font.jsp"></jsp:include>
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
                            <div class="proName">${sessionScope.member.name} </div><div class="proName2">&nbsp;님</div>
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
                    <div class="navListDivName"><a href="/mypage/mypageRecord/${sessionScope.member.member_code}">경기결과</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
				<div class="navListDiv">
                    <div class="navListDivName nt"><a href="/mypage/gameDetail/${sessionScope.member.member_code}">개인전 목록</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName nt">클랜전 목록</div>
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
                    <div class="navListDivName"><a href="../deleteClan">클랜탈퇴</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="../deleteMember">회원탈퇴</a></div>
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
            <div class="mypageDetails">
                <div class="detailsTitle">
                    경기 신청내역
                </div>
                <div class="detailsTitle">
                <a href="../gameDetail/${sessionScope.member.member_code}">
                	<div class="titleDiv">
                		개인 대결 신청 내역
                	</div>
                </a>
                <a href="../clanGameDetail/${sessionScope.member.member_code}">
                	<div class="titleDiv TD">
                		클랜 대결 신청 내역
                	</div>
                </a>
                </div>
                <div class="detailsTitle">
                   클랜 대결 모집 내역
                </div>
                <div class="detailsTable">
                    <table class="tableOrginel">
                        <thead>
                            <tr>
                                <th>위치</th>
                                <th>제목</th>
                                <th>클랜명</th>
                                <th>작성일</th>
                                <th>상세보기</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${mypageClanGame}" var="item" varStatus="status">
                        <c:if test="${item.member_code == sessionScope.member.member_code}">
                        	<tr>
                                <td>${item.loc}</td>
								<td>${item.title}</td>
								<td>${item.clan_name}</td>
								<td><fmt:formatDate value="${item.time}" type="date" pattern="YYYY.MM.dd"/></td>
                                <td><a href="/clanGame/view/${item.clan_game_code}" class="tableButton">상세보기</a></td>
							</tr>
                        </c:if>
                        </c:forEach>
                        </tbody>
                    </table>
                    
                </div>
                </div>
            </div>
        </div>
    
    <jsp:include page="../footer.jsp"></jsp:include>
    <script src="/resources/js/index.js"></script>
</body>
</html>