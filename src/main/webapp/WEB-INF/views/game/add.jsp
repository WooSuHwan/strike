<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/resources/css/font.css">
	<link rel="stylesheet" href="/resources/css/mypagemain.css">
	<link rel="stylesheet" href="/resources/css/index.css">
</head>
<body>
    <jsp:include page="../font.jsp"></jsp:include>
    <jsp:include page="../nav.jsp"></jsp:include>
    <jsp:include page="../rnav.jsp"></jsp:include>
    
    <div class="mypageNav"></div>
	<div>
		<h1>개인 신청 게시글</h1>
		<form method="post">
			<div>
				<label>제목</label>
				<input name="title" type="text">
			</div>
			<div>
				<label>시간</label>
				<input name="time" type="text">
			</div>
			<div>
				<label>위치</label>
				<input name="loc" type="text">
			</div>
			<div>
				<label>모집</label>
				<input name="recruit" type="text">
			</div>
			<div>
				<label>내용</label>
				<input name="story" type="text">
			</div>
			<div>
				<button>등록</button>
			</div>
		</form>
	</div>
	 <jsp:include page="../footer.jsp"></jsp:include>
     <script src="../resources/js/index.js"></script>
</body>
</html>