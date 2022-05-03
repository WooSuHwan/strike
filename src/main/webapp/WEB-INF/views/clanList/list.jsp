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
					<td>${item.clanCode }</td>
					<td>${item.clanName }</td>
					<td>${item.wolCode }</td>
					<td>${item.clanTitle }</td>
					<td>${item.clanContent }</td>
					<td>${item.clanView }</td>
					<td>${item.clanDate }</td>
					<td><a href="detail?clanCode=${item.clanCode}&clanName=${item.clanName}">상세보기</a></td>
					<td><a href="update?clanCode=${item.clanCode}&clanName=${item.clanName}">변경</a>
					<a href="delete?clanCode=${item.clanCode}&clanName=${item.clanName}">삭제</a></td>
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