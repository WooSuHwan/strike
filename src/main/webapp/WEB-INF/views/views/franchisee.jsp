<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

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
	<div class="row">
		<!-- 로그인 전 -->
		<div>
			<c:if test="${sessionScope.member == null && sessionScope.franchisee == null}">
				<div><a href="franchiseeLogin/login" style="text-decoration:none">가맹점 로그인</a></div>
			</c:if>
			
			<c:if test="${sessionScope.member == null && sessionScope.franchisee == null}">
				<div><a href="franchisee/add" style="text-decoration:none">가맹점 회원가입</a></div>
			</c:if>
		<!-- 로그인 후 -->
			<!-- 이름 -->	
			<c:if test="${sessionScope.franchisee != null}">
				${sessionScope.franchisee.name} 관리자님 환영합니다.
			</c:if>
			<!-- 로그아웃 -->
			<c:if test="${sessionScope.franchisee != null}">
				<span><a href="franchiseeLogin/logout" style="text-decoration:none">관리자 로그아웃</a></span>
			</c:if>
			<!-- 마이페이지 -->
			<c:if test="${sessionScope.franchisee != null}">
				<span><a href="franchiseePage/view" style="text-decoration:none">관리자 마이페이지</a></span>
			</c:if>
		</div>
	</div>
</body>
</html>