<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		1.<a href="./gameList/${sessionScope.franchisee.franchisee_code}">등록 된 개인 경기 목록</a>
	</div>
	<div>
		2.<a href="./clanGameList/${sessionScope.franchisee.franchisee_code}">등록 된 클랜 경기 목록</a>
	</div>
</body>
</html>