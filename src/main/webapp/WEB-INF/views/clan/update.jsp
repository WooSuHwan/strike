<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<h1>클랜 수정</h1>
		<form method="post">
			<div>
				<label>클랜명</label>
				<input name="clan_name" type="text" value="${item.clan_name}">
			</div>
			<div>
				<button>등록</button>
			</div>
		</form>
	</div>
</body>
</html>