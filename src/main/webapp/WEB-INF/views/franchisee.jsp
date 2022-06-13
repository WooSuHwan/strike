<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/franchisee/franchiseeIndex.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<jsp:include page="font.jsp"></jsp:include>
</head>
<body>
   <jsp:include page="franchiseeNav.jsp"></jsp:include>
    <section>
        <div class="inAll">
            <div class="hnone"></div> <!-- nav밑 빈영역 채우기 -->
            <div class="upperArea">  <!-- 위에 내용 -->
                <div class="main_content01">
                    <img src="../resources/img/font_title.png" width="100%" height="100%" alt="title">
                </div>
                <div class="main_content02">
                    STRIKE의 가맹점이 되신 것을 환영합니다
                </div>
                <div class="listLink"> 
                    <a href="/franchiseePage/gameList/${sessionScope.franchisee.franchisee_code}" class="pre"><div class="link">개인전 경기 목록</div></a>
                    <a href="/franchiseePage/clanGameList/${sessionScope.franchisee.franchisee_code}" class="clan"><div class="link">클랜전 경기 목록</div></a>
                </div>
            </div>
		</div>
    </section>
</body>
</html>

