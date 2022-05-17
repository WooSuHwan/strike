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
		<h1>${clan_name}</h1>
	</div>
	
	<div>
		<div>클랜원 구성(인원)</div>
			<c:forEach items="${clanMember}" var="item" varStatus="status">
				<div>총 인원${status.count}</div>
			</c:forEach>
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
					<c:if test="${clanMember.size() < 1}">
						<tr>
							<td colspan="10">등록 된 클랜원이 없습니다</td>
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
		
	<div>클랜원 신청 대기열</div>
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
							<c:forEach items="${game}" var="item" varStatus="status">
							<td>
								<c:if test="${item.member_code eq sessionScope.member.member_code}">
									<c:forEach items="${challenger}" var="item" varStatus="status">
										<a href="../permission/${game_code}/${item.clan_member_code}" style="text-decoration:none">승인</a>
									</c:forEach>
								</c:if>
							</td>
							</c:forEach>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<c:forEach items="${clanMember}" var="item" varStatus="status">
			<c:if test="${item.member_code ne sessionScope.member.member_code}">
				<div>
					<a href="../challenge/${clan_code}/${member_code}">신청</a>
				</div>
			</c:if>
		</c:forEach>
	</div>
</body>
</html>