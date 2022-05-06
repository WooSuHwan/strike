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
		<h1>클랜 순위</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>등록순</th>
						<th>클랜명</th>
						<th>클랜장</th>
						<th>전적</th>
						<th>승리</th>
						<th>패배</th>
						<th>무승부</th>
						<th>승률</th>
						<th>변경</th>
						<th>삭제</th>	
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="10">등록 된 클랜이 없습니다</td>
						</tr>
					</c:if>
					
					<c:forEach items="${list}" var="item">
						<tr>
							<td>${list.size()}</td>
							<td>${item.clan_name}</td>
							<td>${item.clan_master}</td>
							<td>${item.clan_record}</td>
							<td>${item.clan_win}</td>
							<td>${item.clan_lost}</td>
							<td>${item.clan_draw}</td>
							<td>${item.clan_rate}</td>
							<td><a href="update/${item.clan_name}">변경</a></td>
							<td><a href="delete/${item.clan_name}">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="add">등록</a>
		</div>
	</div>
</body>
</html>