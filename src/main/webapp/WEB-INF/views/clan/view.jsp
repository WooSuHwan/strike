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
		<h1>${clan.clan_name}</h1>
	</div>
	
	<div>
		<h3>최근 전적</h3>
	</div>
	
	<div>
		<h3>승 : ${clan.clan_win}</h3>
	</div>
	<div>
		<h3>패 : ${clan.clan_lose}</h3>
	</div>
	<div>
		<h3>무 : ${clan.clan_draw}</h3>
	</div>
	<div>
		<h3>승률 : ${clan.clan_rate}</h3>
	</div>
	
	<div>
		<h3>클랜원 구성(인원)</h3>
	</div>
	<div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>티어</th>
						<th>전적</th>
						<th>승</th>
						<th>패</th>
						<th>무</th>
						<th>승률</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${clanMember.size() < 1}">
						<tr>
							<td colspan="8">등록 된 클랜원이 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${clanMember}" var="item" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${item.name}</td>
							<td>${item.score}</td>
							<td>${item.record}</td>
							<td>${item.win}</td>
							<td>${item.lose}</td>
							<td>${item.draw}</td>
							<td>${item.rate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
		
	<div>
		<h3>클랜원 신청 대기열</h3>
	</div>
	<div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>티어</th>
						<th>전적</th>
						<th>승</th>
						<th>패</th>
						<th>무</th>
						<th>승률</th>
						<th>상태</th>
						<th>승인</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${wait.size() < 1}">
						<tr>
							<td colspan="10">등록 된 신청자가 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${wait}" var="item" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${item.name}</td>
							<td>${item.score}</td>
							<td>${item.record}</td>
							<td>${item.win}</td>
							<td>${item.lose}</td>
							<td>${item.draw}</td>
							<td>${item.rate}</td>
							<c:choose>
								<c:when test="${item.state ne 1}"><td>승인대기</td></c:when>
								<c:when test="${item.state eq 1}"><td>승인완료</td></c:when>
							</c:choose>
							<td>
								<c:if test="${item.clan_master_code eq sessionScope.member.member_code}">
									<a href="../permission/${clan_code}/${item.clan_member_code}" style="text-decoration:none">승인</a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<c:if test="${game.member_code ne sessionScope.member.member_code}">
			<div>
				<a href="../application/${clan_code}/${sessionScope.member.member_code}">신청</a>
			</div>
		</c:if>
	</div>
</body>
</html>