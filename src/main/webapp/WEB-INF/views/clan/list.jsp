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
		<h1>클랜 리스트</h1>
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
						<th>입장</th>
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
					
					<c:forEach items="${list}" var="item" varStatus="status">
						<tr>
							<td>${item.clan_name}</td>
							<td>${item.clan_master}</td>
							<td>${item.clan_record}</td>
							<td>${item.clan_win}</td>
							<td>${item.clan_lose}</td>
							<td>${item.clan_draw}</td>
							<td>${item.clan_rate}</td>
							<td><a href="/clanMember/list/${item.clan_code}">입장</a></td>
							<td><a href="update/${item.clan_code}">변경</a></td>
							<td><a href="delete/${item.clan_code}">삭제</a></td>
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