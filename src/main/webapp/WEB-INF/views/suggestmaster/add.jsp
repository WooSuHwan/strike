<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<h1>게시판 등록</h1>
		
		<form method="post">
			<div>
				<label>제목:</label>
				<input name="title" type="text">
			</div>
			<div>
				<label>글쓴이:</label>
				<input name="name" type="text"  value="${name}">
			</div>
			
			<div>
				<label>내용:</label>
					<input name="story" type="text">
			</div>
		
			<div>
				<button>등록</button>
			</div>
		</form>
	</div>
</body>
</html>