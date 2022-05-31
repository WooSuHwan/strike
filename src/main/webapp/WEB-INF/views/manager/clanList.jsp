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
		<h1>등록 된 클랜 목록</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>클랜명</th>
						<th>클랜장</th>
						<th>전적</th>
						<th>승</th>
						<th>패</th>
						<th>무</th>
						<th>승률</th>
						<th>점수</th>
						<th>입장</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="11">등록 된 클랜이 없습니다</td>
						</tr>
					</c:if>
					
					<c:forEach items="${list}" var="item" varStatus="status">
						<tr>
							<td>${item.clan_name}</td>
							<td>${item.name}</td>
							<td>${item.clan_record}</td>
							<td>${item.clan_win}</td>
							<td>${item.clan_lose}</td>
							<td>${item.clan_draw}</td>
							<td>${item.clan_rate}</td>
							<td>${item.clan_score}</td>
							<td><a href="view/${item.clan_code}">입장</a></td>
							<td><a href="update/${item.clan_code}">수정</a></td>
							<td><a href="delete/${item.clan_code}">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>