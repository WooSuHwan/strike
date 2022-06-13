<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>
    <link rel="stylesheet" href="/resources/css/clanvsView.css">
    <link rel="stylesheet" href="/resources/css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
		//아이디 중복 확인
		function confirm(event) {
			var clan_code = $("#challenge").val();
			var 
			
			if(id == "") {
				return false;
			}
			// 신청자 중복 확인
			$.ajax({
				url:"confirm",
				data:{"user_id" : id},
				method:"POST",
				dataType:"TEXT",
				success:function(data) {
					console.log(data);
					
					if(data == "overlap") {
						$("#id_message").text("아이디가 중복이 되었습니다")
						$("#confirm").attr("disabled", true);
					} else {
						$("#id_message").text("멋있는 아이디 입니다.")
						$("#confirm").attr("disabled", false);
					}
				},
				error:function(){
					console.err("에러")
				}
			})
		}
</script>
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
                        <h2>클랜 대결 신청</h2>
                    </div>
                </div>
            </div>
        
            <div class="clanRdetails01">
                <div class="cdetail01">
                    <div class="cdetail01_02">
                        <div class="cdetail01_02_01">
                            <h1>${game.maker}</h1>  <!-- 수정 el 코드 -->
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
                <div class="newRecord02">
                    <div class="newRecord02_01">
                        <p>승 <span>${clanItem.clan_win}</span></p>
                    </div>
                    <div class="newRecord02_02">
                        <p>패 <span>${clanItem.clan_lose}</span></p>
                    </div>
                    <div class="newRecord02_03">
                        <p>무 <span>${clanItem.clan_draw}</span></p>
                    </div>
                    <div class="newRecord02_04">
                        <p>승률 <span>${clanItem.clan_rate}</span></p>
                    </div>
                </div>
            </div>

            <div class="vspost">
                <div class="vspost_01">
                    <h3>대결 신청 게시글</h3>
                </div>
               
                <div class="vspost_02">
                    <div class="vspost_02_01">
                        <h1>${clanGame.title}</h1>
                    </div>
                    <div class="vspost_02_02">
                        <div class="vspost_02_txt">
                            <h2>${clanGame.clan_name}</h2>
                        </div>
                        <div class="vspost_02_date">
                            <div class="vspost_02_date01">
                            <fmt:formatDate value="${clanGame.time}" type="date" pattern="YYYY.MM.dd"/>
                            </div>
                            <div class="vspost_02_date02">
                                <p>조회 56</p>
                            </div>
                        </div>
                    </div>
                    <div class="vspost_02_03">
                        <div class="vpostCo01">
                            <p>[ ${clanGame.loc} ] 에서 개인 대결하실 분 찾아요</p>
                        </div>
                        <div class="vpostCo01">
                            <p>시간 :  ${clanGame.clock}</p>
                        </div>
                        <div class="vpostCo01">
                            <p>위치 : ${clanGame.loc}</p>
                        </div>
                        <div class="vpostCo01">
                            <p>모집인원 : ${clanGame.clan_recruit}명</p>
                        </div>
                        <div class="vpostCo01">
                            <p>주의사항(내용) : ${clanGame.story}</p>
                        </div>
                        <div class="vpostCo01">
                        	<p>스타일 : ${clanGame.style}</p>
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
                        <c:if test="${challenger.size() < 1}">
							<tr>
								<td colspan="9" style="border-right:none;">등록 된 신청자가 없습니다.</td>
							</tr>
						</c:if>
                        <c:forEach items="${admitChallenger}" var="item" varStatus="status">
                            <tr>
                            	<td>${status.index + 1 }</td>
                                <td>${item.clan_name}</td>
                                <td style="color: #ffb400;">${item.clan_score}</td>
                                <td>${item.record}</td>
                                <td>${item.clan_win}</td>
                                <td>${item.clan_lose}</td>
                                <td>${item.clan_draw}</td>
                                <td>${item.clan_rate}</td>
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
                                <th style="border-right: none;">상태</th>
                                <c:forEach items="${challenger}" var="item" varStatus="status">
                                <c:if test="${item.clan_code eq sessionScope.member.clan_code}">
                                	<th style="border-right: none;">승인</th>
                                </c:if>
                                </c:forEach>
                            </tr>
                        </thead>
                        <tbody>
                        <c:if test="${challenger.size() < 1}">
							<tr>
								<td colspan="9" style="border-right:none;">등록 된 신청자가 없습니다.</td>
							</tr>
						</c:if>
                        <c:forEach items="${challenger}" var="item" varStatus="status">
                            <tr>
                            	<td>${status.index + 1 }</td>
                                <td>${item.clan_name}</td>
                                <td style="color: #ffb400;">${item.clan_score}</td>
                                <td>${item.record}</td>
                                <td>${item.clan_win}</td>
                                <td>${item.clan_lose}</td>
                                <td>${item.clan_draw}</td>
                                <td>${item.clan_rate}</td>
                                <c:choose>
                                <c:when test="${item.state ne 1}"><td>승인대기</td></c:when>
                                <c:when test="${item.state eq 1}"><td style="border-right: none; cursor: pointer;">승인</td></c:when>
                                </c:choose>
                                
								<c:if test="${clanGame.clan_code eq sessionScope.member.clan_code}">
									<td><a href="../permission/${clan_game_code}/${item.clan_challenger_code}">승인</a></td>
								</c:if>
						</c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="applicant_03">
                    <a href="../challenge/${clan_game_code}" id="challenge" name="challenge">신청</a>
                </div>
            </div>
</div>
        <div class="wh"></div>
    </section>        
     <jsp:include page="../footer.jsp"></jsp:include>
     <script src="/resources/js/index.js"></script>
</body>
</html>