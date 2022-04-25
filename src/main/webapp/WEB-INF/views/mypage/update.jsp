<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post">
		<div>
			<label>회원 코드</label>
			<input type="text" value="${item.member_code }">
		</div>
		<div>
			<label>회원 아이디</label>
			<input type="text" value="${item.id }">
		</div>
		<div>
			<label>회원 비밀번호</label>
			<input type="text" value="${item.pw }">
		</div>
		<div>
			<label>회원 이름</label>
			<input name="name" type="text" value="${item.name }">
		</div>
		<div>
			<label>회원 생일</label>
			<input name="birth" type="text" value="${item.birth }">
		</div>
		<div>
			<label>회원 성별</label>
			<input name="sex" type="text" value="${item.sex }">
		</div>
		<div>
			<label>회원 전화번호</label>
			<input name="tel" type="text" value="${item.tel }">
		</div>
		<div>
			<button>변경</button>
		</div>
		</form>
</body>
</html>