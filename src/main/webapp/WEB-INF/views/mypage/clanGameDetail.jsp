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
                    <div class="navListDivName"><a href="#">개인전적</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName nt">신청내역</div>
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
<!--                 <div class="detailsTitle"> -->
<!--                     클랜 신청내역 -->
<!--                 </div> -->
<!--                 <div class="detailsTable"> -->
<!--                     <table class="tableOrginel"> -->
<!--                         <thead> -->
<!--                             <tr> -->
<!--                                 <th>번호</th> -->
<!--                                 <th>제목</th> -->
<!--                                 <th>모집현황</th> -->
<!--                                 <th>대결일</th> -->
<!--                                 <th>상세보기</th> -->
<!--                             </tr> -->
<!--                         </thead> -->
<!--                         <tbody> -->
<!--                             <tr> -->
<!--                                 <td>1</td> -->
<!--                                 <td>볼링대결</td> -->
<!--                                 <td>모집완료</td> -->
<!--                                 <td>2022.05.14</td> -->
<!--                                 <td><a href="#" class="tableButton">상세보기</a></td> -->
<!--                             </tr> -->
<!--                             <tr> -->
<!--                                 <td>2</td> -->
<!--                                 <td>[대전] 볼링 대결 모집합니다!</td> -->
<!--                                 <td>모집완료</td> -->
<!--                                 <td>2022.05.14</td> -->
<!--                                 <td> <a href="#" class="tableButton">상세보기</a></td> -->
<!--                             </tr> -->
<!--                         </tbody> -->
<!--                     </table> -->
                    
<!--                 </div> -->
<!--                 <div class="pagination"> -->
<!--                     <div class="paginate"> -->
<!--                         <a href="javascript:;" class="pagebtn link arrow start prev" data-page="1">처음 페이지</a> -->
<!--                         <a href="javascript:;" class="link arrow prev" data-page="1">이전 페이지</a> -->
<!--                         <span class="link mobile" data-page="1" data-end="10"> -->
<!--                             <span class="now">1</span>/ 8 -->
<!--                         </span> -->
<!--                         <a href="javascript:;" class="now link">1</a> -->
<!--                         <a href="javascript:;" class="pagebtn link" data-page="2">2</a> -->
<!--                         <a href="javascript:;" class="pagebtn link" data-page="3">3</a> -->
<!--                         <a href="javascript:;" class="pagebtn link" data-page="4">4</a> -->
<!--                         <a href="javascript:;" class="pagebtn link" data-page="5">5</a> -->
<!--                         <a href="javascript:;" class="pagebtn link arrow last next" data-page="66">Next</a> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
        </div>
    </div>
    
    <jsp:include page="../footer.jsp"></jsp:include>
    <script src="/resources/js/index.js"></script>
</body>
</html>