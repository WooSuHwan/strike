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
		<h1>신청자</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>이름</th>
						<th>클랜</th>
						<th>티어</th>
						<th>전적</th>
						<th>승</th>
						<th>패</th>
						<th>무</th>
						<th>승률</th>
						<th>상태</th>
						<th>승인</th>
						<th>삭제</th>	
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="11">등록 된 신청자가 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${list}" var="item" varStatus="status">
						<tr>
							<td>${item.name}</td>
							<td>${item.clan}</td>
							<td>${item.tier}</td>
							<td>${item.record}</td>
							<td>${item.win}</td>
							<td>${item.lose}</td>
							<td>${item.draw}</td>
							<td>${item.rate}</td>
							<td>${item.state}</td>
							<td>
								<c:if test="${item.member_code eq sessionScope.member.member_code}">
									<a href="permission/${item.member_code}" style="text-decoration:none">승인</a>
								</c:if>
							</td>
							<td>
								<c:if test="${item.member_code eq sessionScope.member.member_code}">
									<a href="../delete/${item.game_code}" style="text-decoration:none">삭제</a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="../add/${game_code}">신청</a>
		</div>
	</div>
</body>
</html>