<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
	${item.member_code }
	${item.id }
	${item.name }
	${item.birth }
	${item.sex }
	${item.tel }
	<a href="../update/${item.member_code}">회원정보 수정</a>
</body>
</html>