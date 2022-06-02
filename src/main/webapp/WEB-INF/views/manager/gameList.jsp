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
		<h1>등록 된 개인 경기 목록</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>시간</th>
						<th>위치</th>
						<th>모집인원</th>
						<th>입장</th>
						<c:if test="${game.member_code eq sessionScope.member.member_code}">
							<th>수정</th>
							<th>삭제</th>
						</c:if>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="9">등록 된 개인 대결이 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${list}" var="item" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${item.maker}</td>
							<td>${item.title}</td>
							<td>${item.time}</td>
							<td>${item.loc}</td>
							<td>${item.recruit}</td>
							<td><a href="view/${item.game_code}">입장</a></td>
							<td><a href="update/${item.game_code}" style="text-decoration:none">수정</a></td>
							<td><a href="delete/${item.game_code}" style="text-decoration:none">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>