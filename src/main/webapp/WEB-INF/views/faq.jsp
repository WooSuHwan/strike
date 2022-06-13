<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="./js/index.js"></script>
    
    <link rel="stylesheet" href="../resources/css/font.css">
    <link rel="stylesheet" href="../resources/css/faq.css">
    <link rel="stylesheet" href="../resources/css/index.css">
</head>
<body>
    <!-- 햄버거 버튼 -->
    <jsp:include page="font.jsp"></jsp:include>
    <jsp:include page="nav.jsp"></jsp:include>

    <section>
        
        <div class="faqAll">
            <div class="faqtitle">
                <div class="faqtitle_01">
                    <img src="../resources/img/bowlingball.png" alt="볼링공">
                </div>
                <div class="faqtitle_02">
                    <h2>자주묻는질문 &nbsp; FAQ</h2>
                </div>
            </div>
            <div class="faqwh">
                <div class="faqwh_01All">
                    <div class="faqwh_01">
                        <div class="faqwh_01_01">
                            <h1>01</h1>
                        </div>
                        <div class="faqwh_01_02">
                            <p>Q. &nbsp; 볼링공 보관시 주의사항</p>
                        </div>
                        <div class="faqwh_01_03">
                            <img src="../resources/img/dwonarrow.png" height="20%" alt="화살표">
                        </div>
                    </div>
                    <div class="faqhide" style="display: none;">
                        <p>
                            기온이 매우 높거나 낮은 여름/겨울철에 볼링공이 깨지는(갈라지는) 현상이 있을 수 있습니다. <br>
                            급격한 온도차이로 인하여 볼링공 커버스톡이 수축과 팽창을 반복하게 되고 이러한 이유로<br>
                            커버스톡이 갈라질 수 있습니다. 10℃ ~ 35℃ 사이의 실내에서 보관하세요
                        </p>
                    </div>
                </div>
                <div class="faqwh_01All">
                    <div class="faqwh_01">
                        <div class="faqwh_01_01">
                            <h1>02</h1>
                        </div>
                        <div class="faqwh_01_02">
                            <p>Q. &nbsp; 손목의 좌우각도 조절은 어떻게 하나요 ?</p>
                        </div>
                        <div class="faqwh_01_03">
                            <img src="../resources/img/dwonarrow.png" height="20%" alt="화살표">
                        </div>
                    </div>
                    <div class="faqhide" style="display: none;">
                        <p>
                            손목의 좌우각도를 조절하는 레버이며, 일반적으로는 0~2정도로 두고 <br>
                            사용하지만 일반적으로 약간 손목이 몸쪽을 자연스레 굽혀지게 되어<br>
                            손목이 제일 편한 상태로 맞춰 조절하도록 하세요
                        </p>
                    </div>
                </div>
                <div class="faqwh_01All">
                    <div class="faqwh_01">
                        <div class="faqwh_01_01">
                            <h1>03</h1>
                        </div>
                        <div class="faqwh_01_02">
                            <p>Q. &nbsp; 손목의 상하각도 조절장치가 있는 아대의 종류가 뭔가요 ?</p>
                        </div>
                        <div class="faqwh_01_03">
                            <img src="../resources/img/dwonarrow.png" height="20%" alt="화살표">
                        </div>
                    </div>
                    <div class="faqhide" style="display: none;">
                        <p>
                            조절형 : 조절레버를 돌리거나 눌러서 손목이 굽어지는 각도를 조절할 수 있습니다. <br>
                            고정형 : 손등의 각도를 일정한 간격으로 홈이 있어 원하는 홈에 걸어 각도를 조절하는 것입니다.<br>
                            초보볼러 또는 일관성있는 릴리스를 원하시는 분께 권장합니다 ^^
                        </p>
                    </div>
                </div>
                <div class="faqwh_01All">
                    <div class="faqwh_01">
                        <div class="faqwh_01_01">
                            <h1>04</h1>
                        </div>
                        <div class="faqwh_01_02">
                            <p>Q. &nbsp; 소프트볼과 하드볼은 뭔가요 ?</p>
                        </div>
                        <div class="faqwh_01_03">
                            <img src="../resources/img/dwonarrow.png" height="20%" alt="화살표">
                        </div>
                    </div>
                    <div class="faqhide" style="display: none;">
                        <p>
                            소프트볼은 흔히 말하는 초구용볼입니다. 레인에서 회전이 많이 발생하도록 만든 볼입니다. <br>
                            하드볼은 스페어처리용볼입니다. 볼이 단단하여 레인서 회전이 거의 발생하지 않고 랭스가 길어 <br>
                            스페어처리할 때 사용합니다.
                        </p>
                    </div>
                </div>
                <div class="faqwh_01All">
                    <div class="faqwh_01">
                        <div class="faqwh_01_01">
                            <h1>05</h1>
                        </div>
                        <div class="faqwh_01_02">
                            <p>Q. &nbsp; 가맹점 회원가입은 어떻게 하나요 ?</p>
                        </div>
                        <div class="faqwh_01_03">
                            <img src="../resources/img/dwonarrow.png" height="20%" alt="화살표">
                        </div>
                    </div>
                    <div class="faqhide" style="display: none;">
                        <p>
                            가맹점 신청페이지에서 신청을 한 후 채택이 되면 <br>
                            가맹점 회원으로 가입하실 수 있는 회원가입 링크를 드립니다.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="wh"></div>
     <jsp:include page="footer.jsp"></jsp:include>
     <script src="../resources/js/index.js"></script>
    </section>
    <script>
 // html dom 이 다 로딩된 후 실행된다.
    $(document).ready(function(){
        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".faqwh_01").click(function(){
            var submenu = $(this).next(".faqhide");

            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        });
    });
    </script>

</body>
</html>