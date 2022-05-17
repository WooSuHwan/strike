<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STRIKE</title>
    <link rel="stylesheet" href="../resources/css/font.css">
    <link rel="stylesheet" href="../resources/css/singup.css">
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
                    <h3><a href="/singup3.html">3. 가입완료</a></h3>
                </div>
            </div>

            <div class="singupTxt">
                <div class="singupTxt01">
                    <h2>약관동의 및 정보활용동의</h2>
                </div>
                <div class="singupTxt02">
                    <p>STRIKE 서비스 이용을 위한 약관에 동의해주세요.</p>
                </div>
            </div>

            <div class="singupBox">
                <div class="singupBox_01">
                    <div class="singupBox_01_01">
                        <div class="singupBox_01_01_01">
                            <div class="membershipIn_01img">
                                <img src="../resources/img/boxicon.png" style="height: 80%; cursor: pointer;" alt="체크박스">
                                <div id="imgDisplay" style="display: none;"><img src="../resources/img/checkbox2.png" height="18px" width="18px" alt="체크박스"></div>
                            </div>
                            <div class="membershipIn_01txt">
                                <a style="text-decoration: none; font-size: 0.97em;" href="javascript:doDisplay();">서비스 이용 약관 동의(필수)</a>
                            </div>
                        </div>
                        <div class="singupBox_01_01_02">
                            <div class="membershipIn_01img">
                                <img src="../resources/img/boxicon.png" style="height: 80%; cursor: pointer;" alt="체크박스">
                                <div id="imgDisplay4" style="display: none;"><img src="../resources/img/checkbox2.png" height="18px" width="18px" alt="체크박스"></div>
                            </div>
                            <div class="membershipIn_01txt">
                                <a style="text-decoration: none; font-size: 0.97em; margin-left: 1.6em; color: rgb(58, 58, 58);" href="javascript:doDisplay4();">전체 동의</a>
                            </div>
                        </div>
                    </div>
                    <div class="singupBox_01_02">
                        <div class="singupBox_01_02_txt1">
                            <div class="borderR"></div>
                            <h4>제 1조 목적</h4>
                        </div>
                        <div class="singupBox_01_02_txt2">
                            <p>
                                제 1조 목적
                                본 약관은 STRIKE(이하"회사"라 합니다)가 제공하는 온라인, <br>
                                오프라인 서비스(이하"서비스"라 합니다)이용과 관련하여 <br> 회사와 이용자의
                                권리, 의무 및 책인사항을 규정함을 목적으로 합니다.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="singupBox_02">
                    <div class="singupBox_01_01">
                        <div class="singupBox_01_01_01">
                            <div class="membershipIn_01img">
                                <img src="../resources/img/boxicon.png" style="height: 80%; cursor: pointer;" alt="체크박스">
                                <div id="imgDisplay2" style="display: none;"><img src="../resources/img/checkbox2.png" height="18px" width="18px" alt="체크박스"></div>
                            </div>
                            <div class="membershipIn_01txt">
                                <a style="text-decoration: none; font-size: 0.97em;" href="javascript:doDisplay2();">개인정보 수집 및 이용 동의(필수)</a>
                            </div>
                        </div>
                    </div>
                    <div class="singupBox_01_02">
                        <div class="singupBox_01_02_txt3">
                            <p>
                                개인정보 수집∙이용 동의서 <br /><br />
                                
                                'STRIKE'의 홈페이지 회원 가입을 신청하시는 분께 아래와 같이 개인정보의 수집·이용목적, <br> 
                                수집하는 개인정보의 항목, 개인정보의 보유 및 이용기간을 안내하여 드리오니 <br>
                                 내용을 자세히 읽으신 후 동의 여부를 결정하여
                                주십시오.
                                <br><br>
                                
                                1. 수집하는 개인정보의 항목<br />
                                'STIRKE'는(은) 다음의 개인정보 항목을 수집합니다.<br /><br />
                                
                                1. 홍페이지 회원가입 및 관리<br />
                                이메일 주소, 닉네임, 비밀번호<br />
                                2. 민원사무 처리<br />
                                이메일 주소<br />
                                3. 재화 또는 서비스 제공<br />
                                이메일 주소, 닉네임, 비밀번호<br />
                                4. 마케팅 및 광고에의 활용<br />
                                이메일주소<br />
                                5. 인터넷 서비스 이용과정에서 아래 개인정보 항목이 자동으로 생성되어 기록 수집될 수 있습니다.
                                <br /><br />
                                
                                
                                2. 개인정보의 수집·이용 목적 <br />
                                'STRIKE'은(는) 개인정보를 다음의 목적을 위해 수집·이용합니다. <br>
                                수집한 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 <br> 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.
                                <br />
                            </p>
                        </div>
                    </div>
                </div>
                <div class="singupBox_03">
                    <div class="singupBox_01_01">
                        <div class="singupBox_01_01_01">
                            <div class="membershipIn_01img">
                                <img src="../resources/img/boxicon.png" style="height: 80%; cursor: pointer;" alt="체크박스">
                                <div id="imgDisplay3" style="display: none;"><img src="../resources/img/checkbox2.png" height="18px" width="18px" alt="체크박스"></div>
                            </div>
                            <div class="membershipIn_01txt">
                                <a style="text-decoration: none; font-size: 0.97em; color: rgb(58, 58, 58);"  href="javascript:doDisplay3();">위치기반서비스 이용 약관 동의(선택)</a>
                            </div>
                        </div>
                    </div>
                    <div class="singupBox_01_02">
                        <div class="singupBox_01_02_txt3">
                            <p>
                                개인위치정보 이용·제공에 관한 동의·조건 <br /><br />
                                
                                'STRIKE'의 홈페이지 회원 가입을 신청하시는 분께 <br>
                                개인위치정보를 이용하여 서비스를 제공하고자 하는 경우에는 미리 이용약관에 <br>
                                명시한 후 개인위치정보주체의 동의를 얻어야 합니다.
                                <br><br>
                                
                                회원 및 법정대리인의 권리와 그 행사방법은 제소 당시의 이용자의 주소에 의하며, <br />
                                주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다<br />
                                다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는<br>
                                민사소송법상의 관할법원에 제기합니다.<br><br>
                                
                                'STRIKE' 회사는 타사업자 또는 이용 고객과의 요금정산 및 민원처리를 위해<br />
                                위치정보 이용·제공·사실 확인자료를 자동 기록·보존하며, <br />
                                해당 자료는 6개월 이상 보관합니다.<br /><br>

                                'STRIKE' 회사는 개인위치정보주체의 동의 없이 개인위치정보를 제3자에게 제공하지 아니하며,<br />
                                제3자에게 개인위치정보를 제공하는 경우에는 제공 받는자 및 제공목적을 사전에<br />
                                개인위치정보주체에게 고지하고 동의를 받습니다.<br /><br />
                                
                                'STRIKE' 회사는  개인위치정보를 회원이 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 <br />
                                수집한 당해 통신 단말장치로 매회 회원에게 제공받는 자,<br />
                                제공일시 및 제공목적을 즉시 통보합니다. 단, 아래 각 호의 1에 해당하는 경우에는<br />
                                회원이 미리 특정하여 지정한 통신 단말장치 또는 전자우편주소로 통보합니다.<br><br>
                                
                                1. 개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우 <br /><br>

                                2. 개인위치정보주체가 개인위치정보를 수집한 해당 통신단말장치 외의 통신단말장치 또는 <br>

                                전자우편주소 등으로 통보할 것을 미리 요청한 경우
                                <br />
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="loginBtn">
                <button type="button" onclick="location.href='../member/add' "> 확인</button>
                <!-- <input type="button" value="로그인" onclick=""> -->
            </div>
            
            <div class="wh"></div>
        </section>
    </form>

    <!-- script -->
    <script>
        w3.includeHTML();
    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="../resources/js/index.js"></script>
</body>
</html>