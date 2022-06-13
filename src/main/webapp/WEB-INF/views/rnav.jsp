<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="font.jsp"></jsp:include>
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
</head>
<body>
	<div class="All">
		<div class="Ham_button">
			<div>
				<a class="menu-trigger" href="#"> 
					<span></span> 
					<span></span>
				</a>
			</div>
		</div>

		<div class="ham-con">
			<!-- 햄버거 버튼 메뉴 시작 -->
			<div class="RM_tilte">
				<div class="RM_tilte_text01">
					 <c:if test="${sessionScope.member == null}">
						<h3>
							<a href="/loginSelect">회원가입/로그인 하기</a>
						</h3>
					</c:if>
					<c:if test="${sessionScope.member != null}">
						<h3><a href="/login/logout">로그아웃</a></h3>
					</c:if>
				</div>
				<div class="RM_tilte_Ricon">
					<img src="/resources/img/right.png" height="50%" alt="right_img">
				</div>
			</div>
			<div class="RM_rangk">
				<div class="clan">
					<div class="clan_icon">
						<img src="/resources/img/T_icon.png" alt="clanicon">
					</div>
					<div class="clan_text">
						<a href="/clan/list">클랜랭크</a>
					</div>
				</div>
				<div class="solo">
					<div class="clan_icon">
						<img src="/resources/img/S_icon.png" alt="soloicon">
					</div>
					<div class="clan_text">
						<a href="/rank/list">개인랭크</a>
					</div>
				</div>
				<div class="vs">
					<div class="clan_icon">
						<img src="/resources/img/V_icon.png" alt="vsicon">
					</div>
					<div class="clan_text">
						<a href="/clanGame/list">대결(신청)</a>
					</div>
				</div>
			</div>
			<div class="RM_faq">
				<div class="faq_icon">
					<img src="/resources/img/faq_icon.png" alt="soloicon">
				</div>
				<div class="faq_text">
					<a href="/faq">FAQ 자주묻는질문</a>
				</div>
			</div>
			<div class="RM_menu">
				<div class="f_board">
					<div class="f_board_text">
						<a href="/suggestfree/list">자유 게시판</a>
					</div>
					<div class="f_board_icon">
						<img src="/resources/img/right.png" width="55%" alt="right">
					</div>
				</div>
				<div class="i_board">
					<div class="f_board_text">
						<a href="/suggestmaster/list">공지 게시판</a>
					</div>
					<div class="f_board_icon">
						<img src="/resources/img/right.png" width="55%" alt="right">
					</div>
				</div>
				<div class="used">
					<div class="f_board_text">
						<a href="#">가맹점 신청</a>
					</div>
					<div class="f_board_icon">
						<img src="/resources/img/right.png" width="55%" alt="right">
					</div>
				</div>
				<div class="battle">
					<c:if test="${sessionScope.member == null}">
	                    <div class="f_board_text"><a href="/login/login">마이페이지</a></div>
					</c:if>
	                <c:if test="${sessionScope.member != null}">
	                    <div class="f_board_text"><a href="/mypage/mypage/${sessionScope.member.member_code}">마이페이지</a></div>
					</c:if>
					<div class="f_board_icon">
						<img src="/resources/img/right.png" width="55%" alt="right">
					</div>
				</div>
			</div>
			<div class="RM_banner">
				<img src="/resources/img/banner02.jpg" width="100%" alt="광고">
			</div>
			<div class="RM_footer">
				<div class="RM_footer_logo">
					<img src="/resources/img/logo.png" alt="logo">
				</div>
				<div class="RM_footer_adr">
					<div class="RM_footer_adr_icon">
						<img src="/resources/img/adr.png" height="70%" alt="adress">
					</div>
					<div class="RM_footer_adr_text">
						<p>대전광역시 동구 가양동 우암로 352-21</p>
					</div>
				</div>
				<div class="RM_footer_tell">
					<div class="RM_footer_adr_icon">
						<img src="/resources/img/tell.png" height="75%" alt="adress">
					</div>
					<div class="RM_footer_adr_text">
						<p>063-447-2500</p>
					</div>
				</div>
				<div class="RM_footer_time">
					<div class="RM_footer_adr_icon">
						<img src="/resources/img/time.png" width="40%" height="70%" alt="adress">
					</div>
					<div class="RM_footer_adr_text">
						<p>AM : 10 ~ PM : 06</p>
					</div>
				</div>
				<div class="RM_footer_copy">
					<p>Copyrights ⓒ STRIKE.all.rights reserved.</p>
				</div>
			</div>
		</div>
		<!-- 햄버거 버튼 메뉴 끝 -->
	</div>



	<!-- 위에서 아래로 -->

	<div class="All2">
		<div class="Ham_button2">
			<div>
				<a class="menu-trigger2" href="#"> <span></span> <span></span>
				</a>
			</div>
		</div>

		<div class="ham-con2">
			<!-- 햄버거 버튼 메뉴 시작 -->
			<ul class="Hnav">
				<li class="Hnav_01"><a href="/clan/list">클랜랭크</a></li>
				<li class="Hnav_02"><a href="/rank/list">개인랭크</a></li>
				<li class="Hnav_03"><a href="/game/list">대결(신청)</a></li>
				<li class="Hnav_04"><a href="#">자유게시판</a></li>
				<li class="Hnav_05"><a href="#">공지사항</a></li>
				<li class="Hnav_06"><a href="#">관리자</a></li>
			</ul>
		</div>
	</div>
</body>
</html>