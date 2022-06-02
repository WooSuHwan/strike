<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>
</head>
<body>
	<div>
		<h1>클랜 등록</h1>
		<form method="post">
			<div>
				<label>클랜명</label>
				<input name="clan_name" type="text">
			</div>
			<div>
				<button>등록</button>
			</div>
		</form>
	</div>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/resources/css/font.css">
	<link rel="stylesheet" href="/resources/css/clancreation.css">
	<link rel="stylesheet" href="/resources/css/index.css">
</head>
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
>>>>>>> refs/heads/WSH
</html>