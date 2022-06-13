<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>
    <link rel="stylesheet" href="/resources/css/font.css">
    <link rel="stylesheet" href="/resources/css/clanrank.css">
    <link rel="stylesheet" href="/resources/css/index.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	<script src="https://www.w3schools.com/lib/w3.js"></script>    
</head>
<body>
    <jsp:include page="../font.jsp"></jsp:include>
    <jsp:include page="../nav.jsp"></jsp:include>
    <jsp:include page="../rnav.jsp"></jsp:include>
<!-- 	<div> -->
<!-- 		<h1>클랜 리스트</h1> -->
<!-- 		<div> -->
<!-- 			<table border="1"> -->
<!-- 				<thead> -->
<!-- 					<tr> -->
<!-- 						<th>클랜명</th> -->
<!-- 						<th>클랜장</th> -->
<!-- 						<th>전적</th> -->
<!-- 						<th>승</th> -->
<!-- 						<th>패</th> -->
<!-- 						<th>무</th> -->
<!-- 						<th>승률</th> -->
<!-- 						<th>입장</th> -->
<!-- 						<th>변경</th> -->
<!-- 						<th>삭제</th> -->
<!-- 					</tr> -->
<!-- 				</thead> -->
				
<!-- 				<tbody> -->
<%-- 					<c:if test="${list.size() < 1}"> --%>
<!-- 						<tr> -->
<!-- 							<td colspan="10">등록 된 클랜이 없습니다</td> -->
<!-- 						</tr> -->
<%-- 					</c:if> --%>
					
<%-- 					<c:forEach items="${list}" var="item" varStatus="status"> --%>
<!-- 						<tr> -->
<%-- 							<td>${item.clan_name}</td> --%>
<%-- 							<td>${item.clan_master}</td> --%>
<%-- 							<td>${item.clan_record}</td> --%>
<%-- 							<td>${item.clan_win}</td> --%>
<%-- 							<td>${item.clan_lose}</td> --%>
<%-- 							<td>${item.clan_draw}</td> --%>
<%-- 							<td>${item.clan_rate}</td> --%>
<%-- 							<td><a href="/clanMember/list/${item.clan_code}">입장</a></td> --%>
<%-- 							<td><a href="update/${item.clan_code}">변경</a></td> --%>
<%-- 							<td><a href="delete/${item.clan_code}">삭제</a></td> --%>
<!-- 						</tr> -->
<%-- 					</c:forEach> --%>
<!-- 				</tbody> -->
<!-- 			</table> -->
<!-- 		</div> -->
<!-- 		<div> -->
<!-- 			<a href="add">등록</a> -->
<!-- 		</div> -->
<!-- 	</div> -->
	
	<section>
        <div class="clanAll">
            <div class="clanrankSearch">
                <div class="clanrankSearch1200">
                    <div class="clanrankSearch_01">
                        <h2>Clan Rank</h2>
                    </div>
                    <form method="get" action="" id="search" class="clanrankSearch_02">
	                    <div class="zmffos">
	                        <p style="margin-right: 1em;">search</p>
	                        <div class="clanrankSearch_02_01">
	                            <input type="text" name="keyword" placeholder="클랜명을 입력해 주세요">
	                            <button class="clanrankSearch_02_02" type="submit">
	                               <img src="/resources/img/premium.png" alt="돋보기" width="55%">
	                            </button>
	                        </div>
	                    </div>
                    </form>
                </div>
            </div>

            <div class="clanbanner">
            	<img alt="배너" width="100%" src="/resources/img/clanbanner.jpg">
                <div class="clanbanner_01">
                    <h1>클랜 순위표</h1>
                    <div class="Cbar"></div>
                </div>
            </div>

            <div class="clanRtable">
                <table class="clanRtable_01">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 35%;">
                        <col style="width: 15%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>순위</th>
                            <th>클랜명</th>
                            <th>전적</th>
                            <th>승</th>
                            <th>패</th>
                            <th>무</th>
                            <th>승률</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:if test="${list.size() < 1}">
						<tr>
							<td colspan="10">조회된 클랜이 없습니다</td>
						</tr>
					</c:if>
					
					<c:forEach items="${list}" var="item" varStatus="status">
						<tr>
							<td>${pager.offset + status.count}</td>
							<td><a href="view/${item.clan_code}">${item.clan_name}</a></td>
							<td>${item.clan_record}</td>
							<td>${item.clan_win}</td>
							<td>${item.clan_lose}</td>
							<td>${item.clan_draw}</td>
							<td>${item.clan_rate}</td>
<%-- 							<td><a href="/view/${item.clan_code}">입장</a></td> --%>
<%-- 							<td><a href="update/${item.clan_code}">변경</a></td> --%>
<%-- 							<td><a href="delete/${item.clan_code}">삭제</a></td> --%>
						</tr>
					</c:forEach>
                    </tbody>
                </table>
            </div>
           <div class="cbtn0">
                <div class="cbtn1">,
                    <a href="add">등록</a>
                </div>
            </div>
            <div class="pagination">
                <div class="paginate">
                    <a href="?page=1" class="pagebtn link arrow start prev" data-page="1">처음 페이지</a>
                    <a href="?page=${pager.prev }&${pager.query}" class="link arrow prev" data-page="1">이전 페이지</a>
<!--                     <span class="link mobile" data-page="1" data-end="10"> -->
<!--                         <span class="now">1</span>/ 8 -->
<!--                     </span> -->
                    <c:forEach var="page" items="${pager.list}">
						<a href="?page=${page}&${pager.query}" class="link now${page == pager.page ? '': 'active' }">${page}</a>
					</c:forEach>
                    <a href="?page=${pager.next }&${pager.query}" class="pagebtn link arrow next" data-page="9" >다음 페이지</a>
                    <a href="?page=${pager.last}" class="pagebtn link arrow last next" data-page="66">Next</a>
                </div>
            </div>
        </div>

        <div class="wh"></div>
    </section>
    
     <jsp:include page="../footer.jsp"></jsp:include>
     <script src="/resources/js/index.js"></script>
</body>
</html>