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
</html>