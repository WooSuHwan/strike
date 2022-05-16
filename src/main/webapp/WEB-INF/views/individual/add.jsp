<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<h1>개인 등록</h1>
		
		<form method="post">
			<div>
				<label>이름:</label>
				<input name="name" type="text"><!-- input name??? -->
			</div>
			<div>
				<label>클랜:</label>
				<label><input type="radio" name="clan" value="클랜없음" checked>클랜없음</label>
			</div>
			<div>
				<label>티어:</label>
				<label><input type="radio" name="tier" value="아이언" checked>아이언</label>
			</div>
			<div>
				<button>등록</button>
			</div>
		</form>
	</div>
</body>
</html>