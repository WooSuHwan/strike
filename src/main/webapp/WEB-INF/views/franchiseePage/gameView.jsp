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
	
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>만든이</th>
					<th>무승부</th>
					<th>상태</th>
					<th>VS</th>
					<th>상태</th>
					<th>무승부</th>
					<th>도전자</th>
				</tr>
			</thead>
			
			<tbody>
				<c:if test="${gameRecord.size() < 1}">
					<tr>
						<td colspan="6">등록 된 개인 대결이 없습니다</td>
					</tr>
				</c:if>
				<c:forEach items="${gameRecord}" var="item" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td><a href="../makerWin/${game_code}/${item.member_code}/${item.challenger_code}">${item.name}</a></td>
						<td><a href="../draw/${game_code}/${item.member_code}/${item.challenger_code}">무승부</a>
						<td><c:choose>
							<c:when test="${item.winner_code eq member_code}"><td>승리</td></c:when>
							<c:when test="${item.loser_code eq member_code}"><td>패배</td></c:when>
							<c:when test="${item.draw eq 1}"><td>무승부</td></c:when>
							<c:when test="${item.draw eq 1}"><td>무승부</td></c:when>
							<c:when test="${item.draw eq 0}"><td>무승부</td></c:when>
						</c:choose></td>
						<td>VS</td>
						<c:choose>
							<c:when test="${item.winner_code eq challenger_code}"><td>승리</td></c:when>
							<c:when test="${item.loser_code eq challenger_code}"><td>패배</td></c:when>
							<c:when test="${item.draw eq 1}"><td>무승부</td></c:when>
						</c:choose>
						<td><a href="../draw/${game_code}/${item.member_code}/${item.challenger_code}">무승부</a>
						<td><a href="../challengerWin/${game_code}/${item.challenger_code}/${item.member_code}">${item.challenger_name}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>