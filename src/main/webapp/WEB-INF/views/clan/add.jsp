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
	 <jsp:include page="../footer.jsp"></jsp:include>
     <script src="../resources/js/index.js"></script>
</body>
</html>