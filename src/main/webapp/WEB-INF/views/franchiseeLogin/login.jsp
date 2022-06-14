<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
<script>
$(function() {
	if(location.search.match("wrong=true")) {
		alert("아이디 혹은 비밀번호가 잘못되었습니다.");
		location.href = location.pathname;
	}
})
</script>
<jsp:include page="../font.jsp"></jsp:include>
</head>
<body class="body">
	<div class="loginAll">
		<div class="login1200px">

			<!-- logo 영역 -->
			<div class="LoginCenterLogo">
				<a href="/franchisee"><img src="../resources/img/franchisee/franchiseeLogo.png" height="100%" width= "80%" alt="logo"></a>
			</div>
			<form action="login" method="post" class="idpassBox">
				<!-- 아이디 박스 영역 -->
				<div class="loginId">
					<div class="loginIdT_01">
						<h3>아이디 입력</h3>
					</div>
					<div class="loginIdT_input">
						<input type="text" name="id">
					</div>
				</div>
				<div class="loginPass">
					<div class="loginIdT_01">
						<h3>비밀번호 입력</h3>
					</div>
					<div class="loginIdT_input">
						<input type="password" name="pw">
					</div>
				</div>
				<div class="membership">
					<div class="membershipIn">
						<div class="membershipIn_01">
							<div class="membershipIn_01img">
								<img src="../resources/img/checkbox.png"
									style="height: 100%; cursor: pointer;" alt="체크박스">
								<div id="imgDisplay" style="display: none;">
									<img src="../resources/img/checkbox2.png" height="18px"
										width="18px" alt="체크박스">
								</div>
							</div>
							<div class="membershipIn_01txt">
								<a style="text-decoration: none; font-size: 0.97em;"
									href="javascript:doDisplay();">로그인 상태 유지</a>
							</div>
						</div>
					</div>
				</div>
				<div class="loginBtn">
					<button>로그인</button>
					<!-- <input type="button" value="로그인" onclick=""> -->
				</div>
			</form>
			<!-- 풋터 영역 -->
			<div class="loginfooter">
				<div class="loginfooterLogo">
					<img src="../resources/img/logo.png" height="100%" alt="logo">
				</div>
				<div class="loginfooterTxt">
					<p>Copyright ⓒ STRIKE.all.rights reserved.</p>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
	<script src="../resources/js/index.js"></script>
<!-- </head> -->
<!-- <body class="body"> -->
<!-- 	<div class="text"> -->
<!-- 		<form action="login" method="post"> -->
		
<!-- 			<div>아이디</div> -->
<!-- 				<input type="text" name="id" size=40> -->
<!-- 				<div>비밀번호</div> -->
<!-- 			<input type="password" name="pw" size=40> -->
			
<!-- 			<div class="login_login"> -->
<!-- 				<button class="login">로그인</button>		 -->
<!-- 			</div> -->
			
<!-- 		</form> -->
<!-- 	</div> -->
</body>
</html>