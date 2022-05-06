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
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="10">등록 된 신청자가 없습니다</td>
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
							<c:choose>
								<c:when test="${item.state ne 1}"><td>승인대기</td></c:when>
								<c:when test="${item.state eq 1}"><td>승인완료</td></c:when>
							</c:choose>
							<!--<td>${item.state}</td>-->
							<c:if test="${item.state != 1}">
								<c:forEach items="${makerItem}" var="maker" varStatus="status">
									<td>
										<c:if test="${maker.member_code eq sessionScope.member.member_code}">
											<a href="../permission/${maker.game_code}" style="text-decoration:none">승인</a>
										</c:if>
									</td>
								</c:forEach>
							</c:if>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- 
		<c:forEach items="${makerItem}" var="maker" varStatus="status">
			<td>
				<c:if test="${maker.member_code eq sessionScope.member.member_code}">
					<a href="permission/${maker.member_code}" style="text-decoration:none">승인</a>
				</c:if>
			</td>
			<td>
				<c:if test="${item.member_code eq sessionScope.member.member_code}">
					<a href="../delete/${maker.game_code}" style="text-decoration:none">삭제</a>
				</c:if>
			</td>
		</c:forEach>
		 -->
		<c:forEach items="${makerItem}" var="maker" varStatus="status">
			<c:if test="${maker.member_code ne sessionScope.member.member_code}">
				<div>
					<a href="../add/${game_code}">신청</a>
				</div>
			</c:if>
		</c:forEach>
	</div>
</body>
</html>