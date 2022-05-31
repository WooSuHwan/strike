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
		<h1>등록 된 개인 목록</h1>
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
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="11">등록 된 회원이 없습니다</td>
						</tr>
					</c:if>
					
					<c:forEach items="${list}" var="item" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${item.name}</td>
							<td>${item.score}</td> <!-- 랭크 -->
							<td>${item.clan_code}</td>
							<td>${item.record}</td>
							<td>${item.win}</td>
							<td>${item.lose}</td>
							<td>${item.draw}</td>
							<td>${item.rate}</td>
							<td><a href="update/${item.member_code}" style="text-decoration:none">수정</a></td>
							<td><a href="delete/${item.member_code}" style="text-decoration:none">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>