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
		<h1>개인</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>제목</th>
						<th>위치</th>
						<th>내용</th>
						<th>작성자</th>
						<th>도전자</th>
						<th>입장</th>
						<th>삭제</th>
						<th>수정</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="8">등록 된 개인 대결이 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${list}" var="item" varStatus="status">
						<tr>
							<td>${item.title}</td>
							<td>${item.loc}</td>
							<td>${item.story}</td>
							<td>${item.maker}</td>
							<td>${item.challenger}</td>
							<td><a href="view/${item.game_code}">입장</a></td>
							<td>
								<c:if test="${item.member_code eq sessionScope.member.member_code}">
									<a href="delete/${item.game_code}" style="text-decoration:none">삭제</a>
								</c:if>
							</td>
							<td>
								<c:if test="${item.member_code eq sessionScope.member.member_code}">
									<a href="update/${item.game_code}" style="text-decoration:none">수정</a>
								</c:if>
							</td>
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