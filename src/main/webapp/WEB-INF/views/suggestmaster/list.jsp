<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지게시판 리스트</title>
<style>
html, body {

}

.login {
	text-align : right;
}

.image-center {
	height : calc(100% - 250px);
	display : flex;
    align-items : center;
    justify-content : center;
    margin-top: 100px;
}
.row {
	display : flex;
    align-items : center;
    justify-content : space-between;
    style="text-decoration:none"
}

a.{
	text-decoration-line: none;
}
</style>
</head>
<body>
	<div>
		<h1>공지게시판</h1>
	
	</div>
		<div>
			<table border="1">
				<thead>
					<tr>
						
						<th>게시글번호</th>
						<th>글제목</th>
						<th>작성자</th>
						<th>조회수</th>
						<th>작성일</th>
						
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

							<td>${item.masterCode}</td>
							<td><a href="view/${item.masterCode}">${item.title}</a></td>
							<td>${item.name}</td>
							<td>${item.hit}</td>
							<td><fmt:formatDate value="${item.regDate}" pattern="yyyy년MM월dd일"/></td>
									
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		
				<span><a href="add" style="text-decoration:none">작성</a></span>
			
		<a href=".." >index</a></td>
	</div>
</body>
</html>