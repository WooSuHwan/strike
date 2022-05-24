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
		<h1>개인 신청 게시글</h1>
		<form method="post">
			<div>
				<label>제목</label>
				<input name="title" type="text">
			</div>
			<div>
				<label>시간</label>
				<input name="clock" type="text">
			</div>
			<div>
				<label>위치</label>
				<input name="loc" type="text">
			</div>
			<div>
				<label>모집</label>
				<input name="recruit" type="number">
			</div>
			<div>
				<label>내용</label>
				<input name="story" type="text">
			</div>
			<div>
				<button>등록</button>
			</div>
		</form>
	</div>
	
	<div>
		<h1>등록 된 장소</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>번호</th>
						<th>위치</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${location.size() < 1}">
						<tr>
							<td colspan="9">등록 된 장소가 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${location}" var="item" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${item.address}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>