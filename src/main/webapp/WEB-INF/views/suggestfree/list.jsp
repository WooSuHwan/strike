<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" href="/resources/css/freeBoard.css">
	<link rel="stylesheet" href="/resources/css/index.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
	

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
                        <div class="clanrankSearch_01_01">
                            <a href="/suggestfree/list">자유게시판</a>
                        </div>
                        <div class="clanrankSearch_01_02">
                            <a href="/suggestmaster/list">공지사항</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="freeB01">
                <div class="freeB01_01">
                    <h1>Notice Board</h1>
                </div>
                <div class="freeB01_02">
                    <p>회원들 간의 다양한 정보를 나눌 수 있는 공간입니다.</p>
                </div>
            </div>

            <div class="freeB02">
                <div class="freeB01_03">
                    <p><span>Total :</span> 22</p>
                </div>
                <div class="freeB01_04">
                    <div class="freeB01_04_01">
                        <select name="board">
                            <option value="선택" selected="selected">선택</option>
                            <option value="전체">전체</option>
                            <option value="제목">제목</option>
                            <option value="작성자">작성자</option>
                            <option value="작성일">작성일</option>
                        </select>
                    </div>
					<form method="get" id="search" class="freeB01_04_02">
						<div class="freeB01_04_02_01">
							<p>search</p>
						</div>
						<div class="freeB01_04_02_02">
							<input type="text" name="fsearch">
						</div>
						<button class="rjator">
							<img src="/resources/img/premium1.png" height="65%" alt="돋보기">
						</button>
					</form>
				</div>
            </div>

            <div class="freeB03">
                <table class="personalvs02_01">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 35%;">
                        <col style="width: 15%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>조회수</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody>
						<c:if test="${list.size() < 1}">
							<tr>
								<td colspan="5">등록 된 내용이 없습니다</td>
							</tr>
						</c:if>
						<c:forEach items="${list}" var="item" varStatus="status"> <!-- ${list} == var="item" -->
							<tr>
								<td>${pager.offset + status.count}</td>
								<td><a href="view/${item.free_code}" "style="text-decoration:none">${item.title}</a> &nbsp;<span class="freespan">(58)</span></td>
								<td>${item.name}</td>
								<td>${item.hit}</td>
								<td><fmt:formatDate value="${item.reg_date}" pattern="yyyy.MM.dd"/></td>
							</tr>
						</c:forEach>
                    </tbody>
                </table>
            </div>

            <div class="cbtn0">
                <c:if test="${sessionScope.member != null}">
			        <div class="cbtn1">
					    <button type="button" onclick = "location.href = 'add' ">글쓰기</button>
			        </div> 
			    </c:if>
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

        <div class="wh"></div>
    </section>
    
	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="/resources/js/index.js"></script>
</body>
</html>