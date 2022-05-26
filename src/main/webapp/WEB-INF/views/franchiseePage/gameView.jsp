<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<h1>대결 신청 게시글</h1>
	</div>
	
	<div>
		<h3>제목 : ${game.title}</h3>
	</div>
	<div>
		<h3>작성자 : ${game.maker}</h3>
	</div>
	<div>
		<h3>시간 : ${game.clock}</h3>
	</div>
	<div>
		<h3>위치 : ${game.loc}</h3>
	</div>
	<div>
		<h3>모집인원 : ${game.recruit}명</h3>
	</div>
	<div>
		<h3>내용 : ${game.story}</h3>
	</div>
	<div>
		<h3>작성일 : ${game.time}</h3>
	</div>
	
	<div>
		<h1>성립이 된 대결</h1>
	</div>
</body>
</html>