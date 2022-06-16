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
                        <h2>개인전 경기 결과 등록</h2>
                    </div>
                </div>
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
                                <p><fmt:formatDate value="${game.time}" pattern="yyyy-MM-dd" /></p>
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
                       <c:if test="${gameRecordEnd.size() < 1}">
					<tr>
						<td colspan="9">처리한 개인 대결이 없습니다</td>
					</tr>
				</c:if>
				<c:forEach items="${gameRecordEnd}" var="item" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${item.game_record_code}</td>
						<td>${item.maker_code}</td>
						<td>${item.name}</td>
						<c:choose>
							<c:when test="${item.winner_code eq item.maker_code}"><td>승리</td></c:when>
							<c:when test="${item.loser_code eq item.maker_code}"><td>패배</td></c:when>
							<c:when test="${item.draw eq 1}"><td>무승부</td></c:when>
						</c:choose>
						<td>VS</td>
						<c:choose>
							<c:when test="${item.winner_code eq item.challenger_code}"><td>승리</td></c:when>
							<c:when test="${item.loser_code eq item.challenger_code}"><td>패배</td></c:when>
							<c:when test="${item.draw eq 1}"><td>무승부</td></c:when>
						</c:choose>
						<td>${item.challenger_name}</td>
						<td>${item.challenger_code}</td>
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
                       <c:if test="${gameRecord.size() < 1}">
					<tr>
						<td colspan="7">등록 된 개인 대결이 없습니다</td>
					</tr>
				</c:if>
				<c:forEach items="${gameRecord}" var="item" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${item.game_record_code}</td>
						<td><a href="../draw/${item.game_code}/${item.game_record_code}/${item.maker_code}/${item.challenger_code}">무승부</a>
						<td>${item.maker_code}</td>
						<td><a href="../makerWin/${item.game_code}/${item.game_record_code}/${item.maker_code}/${item.challenger_code}">${item.name}</a></td>
						<td>${item.challenger_code}</td>
						<td><a href="../challengerWin/${item.game_code}/${item.game_record_code}/${item.challenger_code}/${item.maker_code}">${item.challenger_name}</a></td>
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

<!-- 	<div> -->
<%-- 		<h3>제목 : ${game.title}</h3> --%>
<!-- 	</div> -->
<!-- 	<div> -->
<%-- 		<h3>작성자 : ${game.maker}</h3> --%>
<!-- 	</div> -->
<!-- 	<div> -->
<%-- 		<h3>시간 : ${game.clock}</h3> --%>
<!-- 	</div> -->
<!-- 	<div> -->
<%-- 		<h3>위치 : ${game.loc}</h3> --%>
<!-- 	</div> -->
<!-- 	<div> -->
<%-- 		<h3>모집인원 : ${game.recruit}명</h3> --%>
<!-- 	</div> -->
<!-- 	<div> -->
<%-- 		<h3>내용 : ${game.story}</h3> --%>
<!-- 	</div> -->
<!-- 	<div> -->
<%-- 		<h3>작성일 : ${game.time}</h3> --%>
<!-- 	</div> -->
	
<!-- 	<div> -->
<!-- 		<h1>처리한 대결 목록</h1> -->
<!-- 	</div> -->
	
<!-- 	<div> -->
<!-- 		<table border="1"> -->
<!-- 			<thead> -->
<!-- 				<tr> -->
<!-- 					<th>번호</th> -->
<!-- 					<th>게임기록번호</th> -->
<!-- 					<th>만든이코드</th> -->
<!-- 					<th>만든이</th> -->
<!-- 					<th>상태</th> -->
<!-- 					<th>VS</th> -->
<!-- 					<th>상태</th> -->
<!-- 					<th>도전자</th> -->
<!-- 					<th>도전자 코드</th> -->
<!-- 				</tr> -->
<!-- 			</thead> -->
			
<!-- 			<tbody> -->
<%-- 				<c:if test="${gameRecordEnd.size() < 1}"> --%>
<!-- 					<tr> -->
<!-- 						<td colspan="6">등록 된 개인 대결이 없습니다</td> -->
<!-- 					</tr> -->
<%-- 				</c:if> --%>
<%-- 				<c:forEach items="${gameRecordEnd}" var="item" varStatus="status"> --%>
<!-- 					<tr> -->
<%-- 						<td>${status.count}</td> --%>
<%-- 						<td>${item.game_record_code}</td> --%>
<%-- 						<td>${item.maker_code}</td> --%>
<%-- 						<td>${item.name}</td> --%>
<%-- 						<c:choose> --%>
<%-- 							<c:when test="${item.winner_code eq item.maker_code}"><td>승리</td></c:when> --%>
<%-- 							<c:when test="${item.loser_code eq item.maker_code}"><td>패배</td></c:when> --%>
<%-- 							<c:when test="${item.draw eq 1}"><td>무승부</td></c:when> --%>
<%-- 						</c:choose> --%>
<!-- 						<td>VS</td> -->
<%-- 						<c:choose> --%>
<%-- 							<c:when test="${item.winner_code eq item.challenger_code}"><td>승리</td></c:when> --%>
<%-- 							<c:when test="${item.loser_code eq item.challenger_code}"><td>패배</td></c:when> --%>
<%-- 							<c:when test="${item.draw eq 1}"><td>무승부</td></c:when> --%>
<%-- 						</c:choose> --%>
<%-- 						<td>${item.challenger_name}</td> --%>
<%-- 						<td>${item.challenger_code}</td> --%>
<!-- 					</tr> -->
<%-- 				</c:forEach> --%>
<!-- 			</tbody> -->
<!-- 		</table> -->
<!-- 	</div> -->
	
<!-- 	<div> -->
<!-- 		<h1>대기중인 대결 리스트</h1> -->
<!-- 	</div> -->
	
<!-- 	<div> -->
<!-- 		<table border="1"> -->
<!-- 			<thead> -->
<!-- 				<tr> -->
<!-- 					<th>번호</th> -->
<!-- 					<th>게임기록번호</th> -->
<!-- 					<th>무승부</th> -->
<!-- 					<th>만든이코드</th> -->
<!-- 					<th>만든이</th> -->
<!-- 					<th>도전자 코드</th> -->
<!-- 					<th>도전자</th> -->
<!-- 				</tr> -->
<!-- 			</thead> -->
			
<!-- 			<tbody> -->
<%-- 				<c:if test="${gameRecord.size() < 1}"> --%>
<!-- 					<tr> -->
<!-- 						<td colspan="6">등록 된 개인 대결이 없습니다</td> -->
<!-- 					</tr> -->
<%-- 				</c:if> --%>
<%-- 				<c:forEach items="${gameRecord}" var="item" varStatus="status"> --%>
<!-- 					<tr> -->
<%-- 						<td>${status.count}</td> --%>
<%-- 						<td>${item.game_record_code}</td> --%>
<%-- 						<td><a href="../draw/${item.game_code}/${item.game_record_code}/${item.maker_code}/${item.challenger_code}">무승부</a> --%>
<%-- 						<td>${item.maker_code}</td> --%>
<%-- 						<td><a href="../makerWin/${item.game_code}/${item.game_record_code}/${item.maker_code}/${item.challenger_code}">${item.name}</a></td> --%>
<%-- 						<td>${item.challenger_code}</td> --%>
<%-- 						<td><a href="../challengerWin/${item.game_code}/${item.game_record_code}/${item.challenger_code}/${item.maker_code}">${item.challenger_name}</a></td> --%>
<!-- 					</tr> -->
<%-- 				</c:forEach> --%>
<!-- 			</tbody> -->
<!-- 		</table> -->
<!-- 	</div> -->
<!-- </body> -->
<!-- </html> -->