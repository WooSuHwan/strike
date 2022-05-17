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
		<h1>최근 전적</h1>
	</div>
	
	<c:forEach items="${member}" var="item" varStatus="status">
		<thead>
			<tr>
				<td>승 ${item.win}</td>
				<td>패 ${item.lose}</td>
				<td>무 ${item.draw}</td>
				<td>승률${item.rate}</td>
			</tr>
		</thead>
	</c:forEach>
	
	<div>
		<h1>대결 신청 게시글</h1>
	</div>
	
	<c:forEach items="${game}" var="item" varStatus="status">
		<div>
			<h3>제목 : ${item.title}</h3>
		</div>
		<div>
			<h3>작성자 : ${item.maker}</h3>
		</div>
		<div>
			<h3>시간 : ${item.time}</h3>
		</div>
		<div>
			<h3>위치 : ${item.loc}</h3>
		</div>
		<div>
			<h3>모집인원 : ${item.recruit}명</h3>
		</div>
		<div>
			<h3>내용 : ${item.story}</h3>
		</div>
	</c:forEach>
	
	<div>
		<h1>신청자</h1>
	</div>
	
	<div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>티어</th>
						<th>전적</th>
						<th>승</th>
						<th>패</th>
						<th>무</th>
						<th>승률</th>
						<th>상태</th>
						<th>승인</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${challenger.size() < 1}">
						<tr>
							<td colspan="10">등록 된 신청자가 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${challenger}" var="item" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${item.name}</td>
							<td>${item.tier}</td>
							<td>${item.record}</td>
							<td>${item.win}</td>
							<td>${item.lose}</td>
							<td>${item.draw}</td>
							<td>${item.rate}</td>
							<c:choose>
								<c:when test="${item.state ne 1}"><td>승인대기</td></c:when>
								<c:when test="${item.state eq 1}"><td>승인완료</td></c:when>
							</c:choose>
							<c:forEach items="${game}" var="item" varStatus="status">
							<td>
								<c:if test="${item.member_code eq sessionScope.member.member_code}">
									<c:forEach items="${challenger}" var="item" varStatus="status">
										<a href="../permission/${game_code}/${item.challenger_code}" style="text-decoration:none">승인</a>
									</c:forEach>
								</c:if>
							</td>
							</c:forEach>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<c:forEach items="${game}" var="item" varStatus="status">
			<c:if test="${item.member_code ne sessionScope.member.member_code}">
				<div>
					<a href="../challenge/${game_code}">신청</a>
				</div>
			</c:if>
		</c:forEach>
	</div>
</body>
</html>