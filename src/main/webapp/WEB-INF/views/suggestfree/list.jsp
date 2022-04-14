<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 리스트</title>
</head>
<body>
	<div>
		<h1>자유게시판</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						
						<th>게시글번호</th>
						<th>글제목</th>
						<th>회원번호</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="4">등록 된 내용이 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${list}" var="item" varStatus="status"> <!-- ${list} == var="item" -->
						<tr>
<<<<<<< HEAD
							<td>${item.freeCode}</td>
							<td><a href="view/${item.freeCode}">${item.title}</a></td>
					
=======

							<td>${item.freeCode}</td>
							<td><a href="view/${item.freeCode}">${item.title}</a></td>
							
>>>>>>> refs/heads/HJP
							<td><a href="update/${item.freeCode}">수정</a></td>
							<td><a href="delete/${item.freeCode}">삭제</a></td>
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