<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>STRIKE</title>
<link rel="stylesheet" href="../resources/css/font.css">
<link rel="stylesheet" href="../resources/css/singup.css">
<script>
	function signup() {
		var check1_stat = document.getElementById('agree1').checked;
		var check2_stat = document.getElementById('agree2').checked;

		if (check1_stat == false) {
			alert("서비스 이용 약관에 동의해 주세요");
			form.agree1.focus();
			return;
		}
		if (check2_stat == false) {
			alert("개인정보 수집 및 이용에 동의해 주세요");
			form.agree2.focus();
			return;
		}
		if (check1_stat && check2_stat == true) {
			alert("필수항목에 모두 동의하셨습니다. 회원가입 창으로 이동합니다");
			location.href="../member/add";
		}
	}
</script>
</head>
<body>
	<jsp:include page="font.jsp"></jsp:include>
	<jsp:include page="rnav.jsp"></jsp:include>
	<form class="efef" id="signup_form">
		<section class="singup1200px">

			<!-- logo 부분 -->
			<div class="singupLogo">
				<a href="/"><img src="../resources/img/logo.png" height="100%" alt="logo"></a>
			</div>

			<!-- 단계 부분 -->
			<div class="singupStep">
				<div class="stepbar"></div>
				<div class="sstep1">
					<h3>
						<a href="/singup1">1. 약관동의</a>
					</h3>
				</div>
				<div class="sstep2">
					<h3>
						<a href="../member/add">2. 정보입력</a>
					</h3>
				</div>
				<div class="sstep3">
					<h3>
						<a href="/singup2">3. 가입완료</a>
					</h3>
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
							<div class="membershipIn_01txt">
								<label for="agree"> <input type="checkbox" id="agree1"
									name="agree" value="동의" style="margin-right: 1.2em;">
								</label> <span>서비스 이용 약관 동의(필수)</span>
							</div>
						</div>
						<div class="singupBox_01_01_02">
							<div class="membershipIn_02txt">
								<label for="agree_all"
									style="display: flex; align-items: center;"> <input
									type="checkbox" name="agree_all" id="agree_all"
									style="margin-right: 1.2em;"> <span>전체 동의</span>
								</label>
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
								제 1조 목적 본 약관은 STRIKE(이하"회사"라 합니다)가 제공하는 온라인, <br> 오프라인
								서비스(이하"서비스"라 합니다)이용과 관련하여 <br> 회사와 이용자의 권리, 의무 및 책인사항을 규정함을
								목적으로 합니다.
							</p>
						</div>
					</div>
				</div>
				<div class="singupBox_02">
					<div class="singupBox_01_01">
						<div class="singupBox_01_01_01">
							<div class="membershipIn_01txt">
								<label for="agree"> <input type="checkbox" id="agree2" name="agree"
									value="2" style="margin-right: 1.2em;">
								</label> <span>개인정보 수집 및 이용 동의(필수)</span>
							</div>
						</div>
					</div>
					<div class="singupBox_01_02">
						<div class="singupBox_01_02_txt3">
							<p>
								개인정보 수집∙이용 동의서 <br />
								<br /> 'STRIKE'의 홈페이지 회원 가입을 신청하시는 분께 아래와 같이 개인정보의 수집·이용목적, <br>
								수집하는 개인정보의 항목, 개인정보의 보유 및 이용기간을 안내하여 드리오니 <br> 내용을 자세히 읽으신
								후 동의 여부를 결정하여 주십시오. <br>
								<br> 1. 수집하는 개인정보의 항목<br /> 'STIRKE'는(은) 다음의 개인정보 항목을
								수집합니다.<br />
								<br /> 1. 홍페이지 회원가입 및 관리<br /> 이메일 주소, 닉네임, 비밀번호<br /> 2.
								민원사무 처리<br /> 이메일 주소<br /> 3. 재화 또는 서비스 제공<br /> 이메일 주소, 닉네임,
								비밀번호<br /> 4. 마케팅 및 광고에의 활용<br /> 이메일주소<br /> 5. 인터넷 서비스
								이용과정에서 아래 개인정보 항목이 자동으로 생성되어 기록 수집될 수 있습니다. <br />
								<br /> 2. 개인정보의 수집·이용 목적 <br /> 'STRIKE'은(는) 개인정보를 다음의 목적을 위해
								수집·이용합니다. <br> 수집한 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 <br>
								이용 목적이 변경될 시에는 사전동의를 구할 예정입니다. <br />
							</p>
						</div>
					</div>
				</div>
				<div class="singupBox_03">
					<div class="singupBox_01_01">
						<div class="singupBox_01_01_01">
							<div class="membershipIn_01txt">
								<label for="agree"> <input type="checkbox" name="agree"
									value="3" style="margin-right: 1.2em;">
								</label> <span style="color: rgb(58, 58, 58); margin-top: 0.1em;">위치기반서비스
									이용 동의<strong class="select_disable">(선택)</strong>
								</span>
							</div>
						</div>
					</div>
					<div class="singupBox_01_02">
						<div class="singupBox_01_02_txt3">
							<p>
								개인위치정보 이용·제공에 관한 동의·조건 <br />
								<br /> 'STRIKE'의 홈페이지 회원 가입을 신청하시는 분께 <br> 개인위치정보를 이용하여
								서비스를 제공하고자 하는 경우에는 미리 이용약관에 <br> 명시한 후 개인위치정보주체의 동의를 얻어야
								합니다. <br>
								<br> 회원 및 법정대리인의 권리와 그 행사방법은 제소 당시의 이용자의 주소에 의하며, <br />
								주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다<br /> 다만, 제소 당시 이용자의 주소 또는
								거소가 분명하지 않거나 외국 거주자의 경우에는<br> 민사소송법상의 관할법원에 제기합니다.<br>
								<br> 'STRIKE' 회사는 타사업자 또는 이용 고객과의 요금정산 및 민원처리를 위해<br />
								위치정보 이용·제공·사실 확인자료를 자동 기록·보존하며, <br /> 해당 자료는 6개월 이상 보관합니다.<br />
								<br> 'STRIKE' 회사는 개인위치정보주체의 동의 없이 개인위치정보를 제3자에게 제공하지 아니하며,<br />
								제3자에게 개인위치정보를 제공하는 경우에는 제공 받는자 및 제공목적을 사전에<br /> 개인위치정보주체에게
								고지하고 동의를 받습니다.<br />
								<br /> 'STRIKE' 회사는 개인위치정보를 회원이 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 <br />
								수집한 당해 통신 단말장치로 매회 회원에게 제공받는 자,<br /> 제공일시 및 제공목적을 즉시 통보합니다. 단,
								아래 각 호의 1에 해당하는 경우에는<br /> 회원이 미리 특정하여 지정한 통신 단말장치 또는 전자우편주소로
								통보합니다.<br>
								<br> 1. 개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한
								경우 <br />
								<br> 2. 개인위치정보주체가 개인위치정보를 수집한 해당 통신단말장치 외의 통신단말장치 또는 <br>

								전자우편주소 등으로 통보할 것을 미리 요청한 경우 <br />
							</p>
						</div>
					</div>
				</div>
			</div>

			<div class="loginBtn">
				<button type="button" onclick="signup()">확인</button>
				<!--                 location.href='../member/add' -->
				<!-- <input type="button" value="로그인" onclick=""> -->
			</div>

			<div class="wh"></div>
		</section>
	</form>

	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="../resources/js/index.js"></script>
</body>
</html>