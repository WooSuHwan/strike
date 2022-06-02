<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/index.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://www.w3schools.com/lib/w3.js"></script>
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
            </div>
            <div>
			<a href="/franchiseePage/gameList/${sessionScope.franchisee.franchisee_code}">등록 된 개인 경기 목록</a>
			<a href="">등록 된 클랜 경기 목록</a>
            </div>
		</div>
    </section>
</body>
</html>

