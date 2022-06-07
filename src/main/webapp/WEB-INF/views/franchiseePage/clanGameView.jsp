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
		<h3>제목 : ${clanGame.title}</h3>
	</div>
	<div>
		<h3>작성자 : ${clanGame.clan_name}</h3>
	</div>
	<div>
		<h3>시간 : ${clanGame.clock}</h3>
	</div>
	<div>
		<h3>위치 : ${clanGame.loc}</h3>
	</div>
	<div>
		<h3>모집인원 : ${clanGame.clan_recruit}명</h3>
	</div>
	<div>
		<h3>내용 : ${clanGame.story}</h3>
	</div>
	<div>
		<h3>작성일 : ${clanGame.time}</h3>
	</div>
	
	<div>
		<h1>처리한 대결 목록</h1>
	</div>
	
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>게임기록번호</th>
					<th>만든이코드</th>
					<th>만든이</th>
					<th>상태</th>
					<th>VS</th>
					<th>상태</th>
					<th>도전자</th>
					<th>도전자 코드</th>
				</tr>
			</thead>
			
			<tbody>
				<c:if test="${clanGameRecordEnd.size() < 1}">
					<tr>
						<td colspan="6">등록 된 개인 대결이 없습니다</td>
					</tr>
				</c:if>
				<c:forEach items="${clanGameRecordEnd}" var="item" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${item.clan_game_record_code}</td>
						<td>${item.clan_maker_code}</td>
						<td>${item.clan_name}</td>
						<c:choose>
							<c:when test="${item.winner_code eq item.clan_maker_code}"><td>승리</td></c:when>
							<c:when test="${item.loser_code eq item.clan_maker_code}"><td>패배</td></c:when>
							<c:when test="${item.draw eq 1}"><td>무승부</td></c:when>
						</c:choose>
						<td>VS</td>
						<c:choose>
							<c:when test="${item.winner_code eq item.challenger_clan_code}"><td>승리</td></c:when>
							<c:when test="${item.loser_code eq item.challenger_clan_code}"><td>패배</td></c:when>
							<c:when test="${item.draw eq 1}"><td>무승부</td></c:when>
						</c:choose>
						<td>${item.clan_challenger_name}</td>
						<td>${item.challenger_clan_code}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div>
		<h1>대기중인 대결 리스트</h1>
	</div>
	
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>게임기록번호</th>
					<th>무승부</th>
					<th>만든이코드</th>
					<th>만든이</th>
					<th>도전자 코드</th>
					<th>도전자</th>
				</tr>
			</thead>
			
			<tbody>
				<c:if test="${clanGameRecord.size() < 1}">
					<tr>
						<td colspan="6">등록 된 개인 대결이 없습니다</td>
					</tr>
				</c:if>
				<c:forEach items="${clanGameRecord}" var="item" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${item.clan_game_record_code}</td>
						<td><a href="../clanDraw/${item.clan_game_code}/${item.clan_game_record_code}/${item.clan_maker_code}/${item.challenger_clan_code}">무승부</a>
						<td>${item.clan_maker_code}</td>
						<td><a href="../clanMakerWin/${item.clan_game_code}/${item.clan_game_record_code}/${item.clan_maker_code}/${item.challenger_clan_code}">${item.clan_name}</a></td>
						<td>${item.challenger_clan_code}</td>
						<td><a href="../clanChallengerWin/${item.clan_game_code}/${item.clan_game_record_code}/${item.challenger_clan_code}/${item.clan_maker_code}">${item.clan_challenger_name}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>