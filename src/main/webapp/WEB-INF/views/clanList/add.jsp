<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<h1>팀 리스트 (대결)</h1>
		
		<form method="post">
		<div>
			<label>클랜명</label>
			<input name="clanName" type="text">
		</div>
		<div>
			<label>승패코드</label>
			<input name="wolCode" type="number">
		</div>
		<div>
			<label>제목</label>
			<input name="clanTitle" type="text">
		</div>
		<div>
			<label>내용</label>
			<input name="clanContent" type="text">
		</div>
		<div>
			<label>조회수</label>
			<input name="clanView" type="number">
		</div>
<!-- 		<div> -->
<!-- 			<label>등록일</label> -->
<!-- 			<input name="clanDate" type="text"> -->
<!-- 		</div> -->
		<button>등록</button>
		</form>
	</div>
</body>
</html>