<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍종필</title>

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
			<c:if test="${code eq null}">
				<span><a href="login/login" style="text-decoration:none">로그인 </a></span>
			</c:if>
			
			<c:if test="${code eq null}">
				<span><a href="user/add" style="text-decoration:none">회원가입</a></span>
			</c:if>
		<!-- 로그인 후 -->	
			<c:if test="${code ne null}">
				${name}님 환영합니다.
			</c:if>
			
			<c:if test="${code ne null}">
				<span><a href="login/logout" style="text-decoration:none">로그아웃</a></span>
			</c:if>
		</div>
	</div>
	
	
	<hr style="border: solid 1px gray;">
	
	<div class="row">
		<div class="gagaotalk">
			<span>STRIKE</span>
		</div>
		
		<div>
			<a href="individual/list" style="text-decoration:none">개인 </a><a href="suggestfree/list" style="text-decoration:none">자유게시판</a><a href="suggestmaster/list" style="text-decoration:none">공지게시판</a>
		</div>
	</div>
		
	<div>
		<hr style="border: solid 1px gray;">
	</div>
</body>
</html>