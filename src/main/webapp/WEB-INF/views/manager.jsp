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
		<span>총괄 관리자님 환영합니다.</span>
	</div>
	
	<div>
		<h1>가맹점 목록</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>이름</th>
						<th>주소</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="2">등록 된 가맹점이 없습니다</td>
						</tr>
					</c:if>
					
					<c:forEach items="${list}" var="item">
						<tr>
							<td>${item.name}</td>
							<td>${item.address}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>