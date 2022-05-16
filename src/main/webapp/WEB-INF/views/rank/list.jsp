<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
    <link rel="stylesheet" href="/resources/css/font.css">
    <link rel="stylesheet" href="/resources/css/personalrank.css">
    <link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	    <script src="https://www.w3schools.com/lib/w3.js"></script>
</head>
<body>
    <jsp:include page="../font.jsp"></jsp:include>
    <jsp:include page="../nav.jsp"></jsp:include>
    <jsp:include page="../rnav.jsp"></jsp:include>
<!-- 	<div> -->
<!-- 		<h1>개인 랭크</h1> -->
<!-- 		<div> -->
<!-- 			<table border="1"> -->
<!-- 				<thead> -->
<!-- 					<tr> -->
<!-- 						<th>랭크</th> -->
<!-- 						<th>이름</th> -->
<!-- 						<th>티어</th> -->
<!-- 						<th>클랜</th> -->
<!-- 						<th>전적</th> -->
<!-- 						<th>승</th> -->
<!-- 						<th>패</th> -->
<!-- 						<th>무</th> -->
<!-- 						<th>승률</th> -->
<!-- 					</tr> -->
<!-- 				</thead> -->
				
<!-- 				<tbody> -->
<%-- 					<c:if test="${list.size() < 1}"> --%>
<!-- 						<tr> -->
<!-- 							<td colspan="9">등록 된 회원이 없습니다</td> -->
<!-- 						</tr> -->
<%-- 					</c:if> --%>
					
<%-- 					<c:forEach items="${list}" var="item" varStatus="status"> --%>
<!-- 						<tr> -->
<%-- 							<td>${status.index}</td> --%>
<%-- 							<td>${item.name}</td> --%>
<%-- 							<td>${item.score}</td> <!-- 랭크 --> --%>
<%-- 							<td>${item.clan_code}</td> --%>
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
	
	    <section>
        <div class="clanAll">
            <div class="clanrankSearch">
                <div class="clanrankSearch1200">
                    <div class="clanrankSearch_01">
                        <h2>Personal Rank</h2>
                    </div>
                    <div class="clanrankSearch_02">
                        <p style="margin-right: 1em;">search</p>
                        <div class="clanrankSearch_02_01">
                            <input type="text">
                            <div class="clanrankSearch_02_02">
                                <img src="/resources/img/premium.png" alt="돋보기" width="55%">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="clanbanner">
                <div class="clanbanner_01">
                    <h1>개인 순위표</h1>
                    <div class="Cbar"></div>
                </div>
            </div>

            <div class="clanRtable">
                <table class="clanRtable_01">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>순위</th>
                            <th>이름</th>
                            <th>전적</th>
                            <th>승</th>
                            <th>패</th>
                            <th>무</th>
                            <th>승률</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>홍길동</td>
                            <td>348</td>
                            <td>55</td>
                            <td>1</td>
                            <td>19</td>
                            <td>50%</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>홍길동</td>
                            <td>348</td>
                            <td>55</td>
                            <td>1</td>
                            <td>19</td>
                            <td>50%</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>홍길동</td>
                            <td>348</td>
                            <td>55</td>
                            <td>1</td>
                            <td>19</td>
                            <td>50%</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>홍길동</td>
                            <td>348</td>
                            <td>55</td>
                            <td>1</td>
                            <td>19</td>
                            <td>50%</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>홍길동</td>
                            <td>348</td>
                            <td>55</td>
                            <td>1</td>
                            <td>19</td>
                            <td>50%</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>홍길동</td>
                            <td>348</td>
                            <td>55</td>
                            <td>1</td>
                            <td>19</td>
                            <td>50%</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>홍길동</td>
                            <td>348</td>
                            <td>55</td>
                            <td>1</td>
                            <td>19</td>
                            <td>50%</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>홍길동</td>
                            <td>348</td>
                            <td>55</td>
                            <td>1</td>
                            <td>19</td>
                            <td>50%</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>홍길동</td>
                            <td>348</td>
                            <td>55</td>
                            <td>1</td>
                            <td>19</td>
                            <td>50%</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>홍길동</td>
                            <td>348</td>
                            <td>55</td>
                            <td>1</td>
                            <td>19</td>
                            <td>50%</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="pagination">
                <div class="paginate">
                    <a href="javascript:;" class="pagebtn link arrow start prev" data-page="1">처음 페이지</a>
                    <a href="javascript:;" class="link arrow prev" data-page="1">이전 페이지</a>
                    <span class="link mobile" data-page="1" data-end="10">
                        <span class="now">1</span>/ 8
                    </span>
                    <a href="javascript:;" class="now link">1</a>
                    <a href="javascript:;" class="pagebtn link" data-page="2">2</a>
                    <a href="javascript:;" class="pagebtn link" data-page="3">3</a>
                    <a href="javascript:;" class="pagebtn link" data-page="4">4</a>
                    <a href="javascript:;" class="pagebtn link" data-page="5">5</a>
                    <a href="javascript:;" class="pagebtn link" data-page="6">6</a>
                    <a href="javascript:;" class="pagebtn link" data-page="7">7</a>
                    <a href="javascript:;" class="pagebtn link" data-page="8">8</a>
                    <a href="javascript:;" class="pagebtn link arrow next" data-page="9">다음 페이지</a>
                    <a href="javascript:;" class="pagebtn link arrow last next" data-page="66">Next</a>
                </div>
            </div>
        </div>

        <div class="wh"></div>
        <footer w3-include-html="footer.html"></footer>
    </section>

    <!-- script -->
    <script>
        w3.includeHTML();
    </script>
    
     <jsp:include page="../footer.jsp"></jsp:include>
     <script src="/resources/js/index.js"></script>
</body>
</html>