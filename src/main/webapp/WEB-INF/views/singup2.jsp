<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>
 	<link rel="stylesheet" href="../resources/css/font.css">
    <link rel="stylesheet" href="../resources/css/singup3.css">
    <script src="https://www.w3schools.com/lib/w3.js"></script>
</head>
<body>
<jsp:include page="font.jsp"></jsp:include>
<jsp:include page="rnav.jsp"></jsp:include>
<form class="efef">
        <section class="singup1200px">
            
            <!-- logo 부분 -->
            <div class="singupLogo">
                <img src="../resources/img/logo.png" height="100%" alt="logo">
            </div>

            <!-- 단계 부분 -->
            <div class="singupStep">
                <div class="stepbar"></div>
                <div class="sstep1">
                    <h3><a href="/singup1">1. 약관동의</a></h3>
                </div>
                <div class="sstep2">
                    <h3><a href="../member/add">2. 정보입력</a></h3>
                </div>
                <div class="sstep3">
                    <h3><a href="/singup2">3. 가입완료</a></h3>
                </div>
            </div>
           
            <div class="Sfinish">
                <div class="Sfinish_01">
                    <img src="../resources/img/finishC.png" alt="체크">
                </div>
                <div class="Sfinish_02">
                    <h2>회원가입이 <span>완료</span> 되었습니다 !</h2>
                </div>
                <div class="Sfinish_03">
                    <p>
                        모든 회원가입절차가 완료되었습니다. <br>
                        로그인 후 모든 서비스를 이용할 수 있습니다.
                    </p>
                </div>
            </div>

            <div class="loginBtn">
                <button type="button" onclick="location.href='../login/login' "> 확인</button>
                <!-- <input type="button" value="로그인" onclick=""> -->
            </div>
            
            <div class="wh"></div>
        </section>
    </form>
     <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="../resources/js/index.js"></script>
</body>
</html>