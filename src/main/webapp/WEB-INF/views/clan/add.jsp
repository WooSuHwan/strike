<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/resources/css/font.css">
	<link rel="stylesheet" href="/resources/css/clancreation.css">
	<link rel="stylesheet" href="/resources/css/index.css">
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
function confirm(event) {
	var clan_code = ${sessionScope.member.clan_code}.val();
	
	if(clan_code == "") {
		return false;
	}
	// 클랜코드
	$.ajax({
		url:""me",
		data:{"user_id" : id},
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
}
</script>

<body>
    <jsp:include page="../font.jsp"></jsp:include>
    <jsp:include page="../nav.jsp"></jsp:include>
    <jsp:include page="../rnav.jsp"></jsp:include>
    
	<section>
        <div class="clanAll">
            <div class="clanrankSearch">
                <div class="clanrankSearch1200">
                    <div class="clanrankSearch_01">
                        <h2>클랜 생성</h2>
                    </div>
                </div>
            </div>
            <form class="clancr01" method="post">
                <div class="clancr01_01">
                    <div class="clancr01_b"></div>
                    <div class="clancr01_b01">
                        <div class="clancr01_b01_01">
                            <h2>클랜 생성</h2>
                        </div>
                        <div class="clancr01_b01_02">
                            <div class="clanc001">
                                <h3>클랜명</h3>
                            </div>
                            <div class="clanc002">
                                <input type="text" name="clan_name">
                            </div>
                        </div>
                        <div class="clancr01_b01_03">
                            <div class="clanc003">
                                <a href="/clan/list">취소</a>
                            </div>
                            <div class="clanc004">
                                <button>등록</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
	 <jsp:include page="../footer.jsp"></jsp:include>
     <script src="../resources/js/index.js"></script>
</body>
</html>