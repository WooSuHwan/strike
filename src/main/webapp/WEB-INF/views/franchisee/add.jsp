<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>
<link rel="shortcut icon" type="image/x-icon" href="../resources/img/Ologo.png" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
.body {
    position: relative;
    background: #f5f6f7;
}

.simbol {
	display: flex;
    justify-content: center;
}

.text {
	display: flex;
    justify-content: center;
    
}

.add {
	display: flex;
    justify-content: center;
    margin-top: 20px;
}

.add_add {
	background-color: #2660d6;
    color: yellow;
    width: 300px;
}

</style>

<script>
// 아이디 중복 확인
function confirm(event) {
	var id = $("#id").val();

	if(id == "") {
		return false;
	}
	// 아이디 중복 확인
	$.ajax({
		url:"same",
		data:{"franchisee_id" : id},
		method:"POST",
		dataType:"TEXT",
		success:function(data) {
			console.log(data);
			
			if(data == "overlap") {
				$("#id_message").text("아이디가 중복이 되었습니다")
				$("#confirm").attr("disabled", true);
			} else {
				$("#id_message").text("멋있는 아이디 입니다.")
				$("#confirm").attr("disabled", false);
			}
		},
		error:function(){
			console.err("에러")
		}
	})
}
// 비밀번호 확인
function pw_confirm() {
	var pw = $("#pw").val();
	var pw_confirm = $("#pw_confirm").val()
	
	if(pw == "") {
		$("#pw_message").text("비밀번호가 비었습니다")
		return true;
	}
	
	if(pw == pw_confirm) {
		$("#pw_confirm_message").text("비밀번호가 일치합니다")
		return false;
	} else {
		$("#pw_confirm_message").text("비밀번호가 일치하지 않습니다")
		return true;
	}
	
}
// 페이지 로딩 후
$(function() {
	$("#id").blur(function() {
		confirm();
	})
	
	$("#pw, #pw_confirm").blur(function() {
		pw_confirm();
	})
	// 등록을 눌렀을 때
	$("#add").submit(function(event) {
		
		if($("#pw").val()=="") {
			alert("비밀번호가 비었습니다")
			event.preventDefault()
			return false;
		}
		// 등록 방지 용도
		var value = $("#pw_confirm").val();
		var result = value.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}/);
		if(result == null) {
			alert("비밀번호가 비었거나 일치하지 않습니다")
			event.preventDefault()
			return false;
		}
		
		if($("#name").val()=="") {
			alert("이름이 비었습니다")
			event.preventDefault()
			return false;
		}
		
		if($("#birth").val()=="") {
			alert("생년월일이 비었습니다")
			event.preventDefault()
			return false;
		}
		
		if($("#tel").val()=="") {
			alert("전화번호가 비었습니다")
			event.preventDefault()
			return false;
		}
		
		if($("#address").val()=="") {
			alert("주소가 비었습니다")
			event.preventDefault()
			return false;
		}
	})
	// 보여주는 용도
	$("#pw").on("keyup", function() {
		var value = $("#pw").val();
		var result = value.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}/);
		
		if(result == null) {
			$("#pw_message").text("8~16자 영문 및 대소문자 숫자 특수문자");
		} else {
			$("#pw_message").text("비밀번호가 조건에 맞습니다");
		}	
	})
})


</script>
    <link rel="stylesheet" href="../resources/css/font.css">
    <link rel="stylesheet" href="../resources/css/singup2.css">
    <script src="https://www.w3schools.com/lib/w3.js"></script>
</head>
<body class="body">
<jsp:include page="../font.jsp"></jsp:include>
<form class="efef" action="add" method="post" id="add">
        <section class="singup1200px">
            
<!--             logo 부분 -->
            <div class="singupLogo">
                <img src="../resources/img/logo.png" height="100%" alt="logo">
            </div>

            <div class="singup2Txt">
                <h2>회원정보를 입력해주세요.</h2>
            </div>

            <div class="singup2simple">
                <div class="singup2simple_01">
                    <p>기본정보</p>
                </div>
                <div class="singup2simple_02">
                    <span>*</span>&nbsp; 표시는 필수항목 입니다.
                </div>
            </div>

                <div class="singup2Table">
                    <table>
                        <tbody>
                            <tr>
                                <td class="tableColor">아이디 <span>*</span></td>
                                <td class="tableInput"><input type="text" name="id" id="id" required><div id="id_message"></div></td>
                                
                            </tr>
                            <tr>
                                <td class="tableColor">비밀번호 <span>*</span></td>
                                <td class="tableInput"><input type="password" name="pw" id="pw"> <div id="pw_message"></div></td>
                            </tr>
                            <tr>
                                <td class="tableColor">비밀번호 확인 <span>*</span></td>
                                <td class="tableInput"><input type="password" name="pw_confirm" id="pw_confirm"><div id="pw_confirm_message"></div></td>
                            </tr>
                            <tr>
                                <td class="tableColor">이름 <span>*</span></td>
                                <td class="tableInput"><input type="text" name="name" id="name"><div id="name_message"></div></td>
                            </tr>
                            <tr>
                                <td class="tableColor">주소 <span>*</span></td>
                                <td class="tableInput">
                                    <div class="tableInput_01">
                                        <input type="text" style="width: 23%;" name="postcode" id="postcode"  placeholder="우편번호" readonly>
                                        <button type="button" class="tableBtn0" onclick="execDaumPostcode()">우편번호</button>
                                    </div>
                                    <div class="tableInput_02">
                                        <input type="text" style="margin-left: 1.5em;" class="tableBtn1" name="address" id="address" placeholder="도로명 주소" readonly />
                                        <input type="text" style="margin-left: 0.7em;" name="detailAddress" placeholder="상세 주소" required />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableColor">휴대전화 <span>*</span></td>
                                <td class="tableInput"><input type="tel" name="tel" id="tel"></td>
                                <div id="tel_message"></div>
                            </tr>
                            <tr>
                                <td class="tableColor">생년월일 <span>*</span></td>
                                <td class="tableInput"><input type="date" name="birth" id="birth"></td>
                                <div id="birth_message"></div>
                            </tr>
                            <tr>
                                <td class="tableColor">성별 <span>*</span></td>
                                <td class="tableInput" style="border-bottom: none;">
                                    <select name="sex" id="sex">
                                        <option value="0">남자</option>
                                        <option value="1">여자</option>
                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
	            <div class="loginBtn add">
	                <button id="confirm" disabled="disabled" class="add_add" type="submit"> 확인</button>
	            </div>
            <div class="wh"></div>
        </section>
    </form>
    
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>  
<!--     autoload=false 파라미터를 이용하여 자동으로 로딩되는 것을 막습니다. 우편번호 -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script> 
<!--     햄버거버튼 -->
    <script src="../resources/js/index.js"></script>
</body>
</html>