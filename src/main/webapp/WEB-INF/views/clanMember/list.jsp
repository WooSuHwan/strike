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
		<h1>클랜원 구성</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>이름</th>
						<th>티어</th>
						<th>기록</th>
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
							<td colspan="9">등록 된 클랜원이 없습니다</td>
						</tr>
					</c:if>
					
					<c:forEach items="${list}" var="item" varStatus="status">
						<tr>
							<td>${item.name}</td>
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
								<td><a href="../permission/${item.clan_code}">승인</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="../add/${clan_code}">신청</a>
		</div>
	</div>
</body>
</html>