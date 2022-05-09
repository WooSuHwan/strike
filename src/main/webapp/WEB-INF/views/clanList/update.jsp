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
		<h1>팀 리스트 (대결)수정</h1>
		
		<form method="post">
		<div>
			<label>게시물코드</label>
			<input type="text" value="${item.clanCode }">
		</div>
		<div>
			<label>클랜명</label>
			<input type="text" value="${item.clanName }">
		</div>
		<div>
			<label>승패코드</label>
			<input name="wolCode" type="number" value="${item.wolCode }">
		</div>
		<div>
			<label>제목</label>
			<input name="clanTitle" type="text" value="${item.clanTitle }">
		</div>
		<div>
			<label>내용</label>
			<input name="clanContent" type="text" value="${item.clanContent }">
		</div>
		<div>
			<label>조회수</label>
			<input name="clanView" type="number" value="${item.clanView }">
		</div>
		<div>
			<label>등록일</label>
			<input name="clanDate" type="text" value="${item.clanDate }">
		</div>
		<div>
			<button>변경</button>
		</div>
		</form>
	</div>
</body>
</html>