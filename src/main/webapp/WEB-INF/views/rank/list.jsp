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
		<h1>개인 랭크</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>랭크</th>
						<th>이름</th>
						<th>티어</th>
						<th>클랜</th>
						<th>전적</th>
						<th>승</th>
						<th>패</th>
						<th>무</th>
						<th>승률</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="9">등록 된 회원이 없습니다</td>
						</tr>
					</c:if>
					
					<c:forEach items="${list}" var="item" varStatus="status">
						<tr>
							<td>${status.index}</td>
							<td>${item.name}</td>
							<td>${item.score}</td> <!-- 랭크 -->
							<td>${item.clan_code}</td>
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
</body>
</html>