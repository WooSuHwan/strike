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
		<h1>팀 수정</h1>
		
		<form method="post">
		<div>
			<label>팀명</label>
			<input type="text" value="${item.clanName }">
		</div>
		<div>
			<label>회원 아이디</label>
			<input name="memberCode" type="text" value="${item.memId }">
		</div>
		<div>
			<label>전적</label>
			<input name="clanCount" type="text" value="${item.clanCount }">
		</div>
		<div>
			<label>승리</label>
			<input name="clanWin" type="text" value="${item.clanWin }">
		</div>
		<div>
			<label>패배</label>
			<input name="clanLost" type="text" value="${item.clanLost }">
		</div>
		<div>
			<label>점수</label>
			<input name="clanScore" type="text" value="${item.clanScore }">
		</div>
		<div>
			<button>변경</button>
		</div>
		</form>
	</div>
</body>
</html>