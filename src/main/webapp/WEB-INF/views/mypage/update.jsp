<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/mypagemain.css">
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
						<div class="proName">${item.name }</div>
						<div class="proName2">&nbsp;님</div>
					</div>
				</div>

				<div class="navList">
					<div class="navListDiv">
						<div class="navListDivName nt">내 정보 관리</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv">
						<div class="navListDivName">
							<a href="/mypage/mypageRecord/${sessionScope.member.member_code}">경기결과</a>
						</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv">
						<div class="navListDivName nt">
							<a href="/mypage/GameDetail/${sessionScope.member.member_code}">개인전
								목록</a>
						</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv">
						<div class="navListDivName">
							<a
								href="/mypage/clanGameDetail/${sessionScope.member.member_code}">클랜전
								목록</a>
						</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv">
						<div class="navListDivName">
							<a href="../mypageFreeList/${sessionScope.member.member_code}">내가
								쓴 글</a>
						</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv">
						<div class="navListDivName">
							<a href="../deleteClan">클랜탈퇴</a>
						</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv">
						<div class="navListDivName">
							<a href="../deleteMember">회원탈퇴</a>
						</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv">
						<div class="navListDivName">
							<a href="/mypage/mypage/${sessionScope.member.member_code}">마이페이지
								홈</a>
						</div>
						<div class="navListDivImg">
							<img src="/resources/img/right.png" alt="">
						</div>
					</div>
					<div class="navListDiv"></div>
				</div>

			</div>

			<div class="mainBody">
				<div class="mypageUpdate" style="height: 52em;">
					<div class="singup2simple">
						<div class="singup2simple_01">
							<p>개인정보 수정</p>
						</div>
					</div>
					<form class="fofo01" method="post">
						<div class="singup2Table">
							<table>
								<tbody>
									<tr>
										<td class="tableColor">아이디</td>
										<td class="tableInput"><p>${item.id }</p></td>
									</tr>
									<tr>
										<td class="tableColor">이름</td>
										<td class="tableInput"><input type="text" name="name"
											value="${item.name }"></td>
									</tr>
									<tr>
										<td class="tableColor">휴대전화</td>
										<td class="tableInput"><input type="text" name="tel"
											value="${item.tel }"></td>
									</tr>
									<tr>
										<td class="tableColor">생년월일</td>
										<td class="tableInput"><input style="width: 17%;"
											type="date" name="birth" value="${item.birth }"></td>
									</tr>
									<tr>
										<td class="tableColor">성별</td>
										<td class="tableInput" style="border-bottom: none;">
											<p>
												<c:choose>
													<c:when test="${sessionScope.member.sex == 0}">
									          		남자
									       		</c:when>
													<c:when test="${sessionScope.member.sex == 1}">
									          		여자
									       		</c:when>
													<c:otherwise>
									          		성별이 등록되지 않았습니다.
									       		</c:otherwise>
												</c:choose>
											</p>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="loginBtn">
							<a><button type="submit">개인정보 수정</button></a>
						</div>
					</form>
				</div>
				<div class="wh"></div>
			</div>
		</div>

	</div>
	<!-- 	<form method="post"> -->
	<!-- 		<div> -->
	<%-- 			<label>회원 코드</label> <input type="text" value="${item.member_code }"> --%>
	<!-- 		</div> -->
	<!-- 		<div> -->
	<%-- 			<label>회원 아이디</label> <input type="text" value="${item.id }"> --%>
	<!-- 		</div> -->
	<!-- 		<div> -->
	<%-- 			<label>회원 비밀번호</label> <input type="text" value="${item.pw }"> --%>
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<label>회원 이름</label> <input name="name" type="text" -->
	<%-- 				value="${item.name }"> --%>
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<label>회원 생일</label> <input name="birth" type="text" -->
	<%-- 				value="${item.birth }"> --%>
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<label>회원 성별</label> <input name="sex" type="text" -->
	<%-- 				value="${item.sex }"> --%>
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<label>회원 전화번호</label> <input name="tel" type="text" -->
	<%-- 				value="${item.tel }"> --%>
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<button>변경</button> -->
	<!-- 		</div> -->
	<!-- 	</form> -->

	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="/resources/js/index.js"></script>
</body>
</html>