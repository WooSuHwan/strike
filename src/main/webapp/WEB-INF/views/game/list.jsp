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
						<!--  
						<th>이름</th>
						<th>클랜</th>
						<th>티어</th>
						<th>전적</th>
						<th>승</th>
						<th>패</th>
						<th>무</th>
						<th>승률</th>
						-->
						<th>입장</th>
						<th>삭제</th>
						<th>수정</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="5">등록 된 개인 대결이 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${list}" var="item" varStatus="status">
						<tr>
							<td>${item.title}</td>
							<td>${item.loc}</td>
							<td><a href="http://localhost:9090/challenger/list/${item.game_code}">입장</a></td>
							<td>
								<c:if test="${sessionScope.member != null}">
									<a href="delete/${item.member_code}" style="text-decoration:none">삭제</a>
								</c:if>
							</td>
							<td>
								<c:if test="${sessionScope.member != null}">
									<a href="update/${item.member_code}" style="text-decoration:none">수정</a>
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