<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<div>
			<h3>게시글 변경</h3>
		</div>
		<form method="post">
			<div>
				<label>제목</label>
				<input type="text" name="title" value="${item.title}">	
			</div>
			
			<div>
				<label>내용</label>
				<textarea name="story">${item.story}</textarea>	
			</div>
			
			<div>
				<button>변경</button>
				
			</div>			
		</form>
	</div>	
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<div>
			<h3>게시글 변경</h3>
		</div>
		<form method="post">
			<div>
				<label>제목</label>
				<input type="text" name="title" value="${item.title}">	
			</div>
			
			<div>
				<label>내용</label>
				<textarea name="story">${item.story}</textarea>	
			</div>
			
			<div>
				<button>변경</button>
				
			</div>			
		</form>
	</div>	
</body>
>>>>>>> refs/heads/WSH
</html>