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
		<h1>팀 등록</h1>
		
		<form method="post">
		<div>
			<label>팀명</label>
			<input name="clanName" type="text">
		</div>
		<div>
			<label>회원 번호</label>
			<input name="memberCode" type="text">
		</div>
		<div>
			<label>전적</label>
			<input name="clanCount" type="text">
		</div>
		<div>
			<label>승리</label>
			<input name="clanWin" type="text">
		</div>
		<div>
			<label>패배</label>
			<input name="clanLost" type="text">
		</div>
		<div>
			<label>점수</label>
			<input name="clanScore" type="text">
		</div>
		<button>등록</button>
		</form>
	</div>
</body>
</html>