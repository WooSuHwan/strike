<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<h3>팀</h3>
		<table border="1px">
			<thead>
				<tr>
					<th>팀명</th>
					<th>회원 아이디</th>
					<th>전적</th>
					<th>승리</th>
					<th>패배</th>
					<th>점수</th>
					<th>상세보기</th>
					<th>관리</th>
				</tr>
			</thead>
			
			<tbody>
			<c:if test="${list.size() < 1 }">
				<tr>
					<td colspan="10">등록 된 팀 랭크가 없습니다</td>
				</tr>
			</c:if>

			<c:forEach items="${list}" var="item">
				<tr>
					<td>${item.clanName }</td>
					<td>${item.memberCode }</td>
					<td>${item.clanCount }</td>
					<td>${item.clanWin }</td>
					<td>${item.clanLost }</td>
					<td>${item.clanScore }</td>
					<td><a href="../detail/${item.clanName }">상세보기</a></td>
					<td><a href="update/${item.clanName }">변경</a><a href="delete/${item.clanName }">삭제</a></td>
				</tr>
			</c:forEach>	
			</tbody>
		</table>
	</div>
	<div>
		<a href="add">등록</a>
	</div>
</body>
=======
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
						<th>입장</th>	
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
							<td>${list.size() - status.index}</td>
							<td>${item.clan_name}</td>
							<td>${item.clan_master}</td>
							<td>${item.clan_record}</td>
							<td>${item.clan_win}</td>
							<td>${item.clan_lost}</td>
							<td>${item.clan_draw}</td>
							<td>${item.clan_rate}</td>
							<td><a href="update/${item.member_code}">변경</a></td>
							<td><a href="delete/${item.member_code}">삭제</a></td>
							<td><a href="clanMember/${item.clan_code}">입장</a></td>
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
>>>>>>> refs/heads/master
</html>