<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/mypageDelete.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
</head>
<body>
	<jsp:include page="../font.jsp"></jsp:include>
	<jsp:include page="../nav.jsp"></jsp:include>
	<jsp:include page="../rnav.jsp"></jsp:include>

	<div class="mypageNav"></div>

	<div class="mypageTotal">
		<div class="itemTotal">

			<div class="leftNav">
				<div class="navPro">
					<div class="proOne">
						<img src="/resources/img/mypage1.png" alt="1">
					</div>
					<div class="proFont">
						<div class="proName">${sessionScope.member.name}</div>
						<div class="proName2">&nbsp;님</div>
					</div>
				</div>

	                <div class="navList">
                <div class="navListDiv">
                    <div class="navListDivName"><a href="../mypage/update/${sessionScope.member.member_code}">내 정보 관리</a></div>
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
                    <div class="navListDivName"><a href="/mypage/gameDetail/${sessionScope.member.member_code}">신청내역</a></div>
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
                    <div class="navListDivName"><a href="/mypage/deleteClan">클랜탈퇴</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="/mypage/deleteMember">회원탈퇴</a></div>
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

            <div class="mypageDeletemain">
                <div class="mainBox">
                    <div class="boxTitle">

                        <img src="/resources/img/mypageDelete.png" alt="">

                        <div class="titleText1">
                            회원 탈퇴를 진행하시겠습니까?
                        </div>
                        <div class="titleText2">
                            확인 버튼을 누르시면 <br>
                            정상적으로 회원탈퇴가 완료됩니다.
                        </div>
                    </div>
                    <div class="boxButton">
                       <a href="/mypage/deleteMember/${sessionScope.member.member_code}">확인</a>
                    </div>
                </div>
            </div>

				</div>
				<div class="wh"></div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="/resources/js/index.js"></script>
</body>
</html>