<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<c:forEach items="${list}" var="item" varStatus="status">
		<div>
			<h1>제목</h1>
			<h3>${item.title}</h3>
		</div>
		<div>
			<h1>위치</h1>
			<h3>${item.loc}</h3>
		</div>
		<div>
			<h1>내용</h1>
			<h3>${item.story}</h3>
		</div>
		<div>
			<a href="/challenger/list/${item.game_code}">신청자 목록</a>
		</div>
	</c:forEach>
</body>
</html>