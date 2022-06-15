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
                    <div class="navListDivName nt"><a href="/mypage/GameDetail/${sessionScope.member.member_code}">개인전 목록</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="/mypage/clanGameDetail/${sessionScope.member.member_code}">클랜전 목록</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                                <div class="navListDiv">
                    <div class="navListDivName nt">내가 쓴 글</div>
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
                    자유 게시판
                </div>
                <div class="detailsTitle">
                   자유 게시판 목록
                </div>
                <div class="detailsTable">
                    <table class="tableOrginel">
                    <colgroup>
                        <col style="width: 35%;">
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                    </colgroup>
                        <thead>
                            <tr>
                                <th>제목</th>
                                <th>등록일</th>
                                <th>작성자</th>
                                <th>조회수</th>
                                <th>상세보기</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${mypageFreeList}" var="item" varStatus="status">
                        <c:if test="${item.member_code == sessionScope.member.member_code}">
                            <tr>
                                <td>${item.title }</td>
                                 <td><fmt:formatDate value="${item.reg_date}" type="date" pattern="YYYY.MM.dd"/></td>
                                <td>${item.name}</td>
                                <td>${item.hit }</td>
                                <td><a href="/suggestfree/view/${item.free_code}" class="tableButton">상세보기</a></td>
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