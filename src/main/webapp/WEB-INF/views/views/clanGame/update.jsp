<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>
</head>
<body>
	<div>
		<h1>개인 신청 게시글 수정</h1>
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
</body>
</html>