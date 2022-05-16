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
			<h3>댓글 변경</h3>
		</div>
		<form method="post">
			<div>
				<label>댓글작성자</label>
				<input type="text" name="reply_name" value="${reply.replyName}">	
			</div>
			
			<div>
				<label>내용</label>
				<textarea  name="replyStory">${reply.replyStory}</textarea>	
			</div>
			
			<div>
				<button>변경</button>
				
			</div>			
		</form>
	</div>	
</body>
</html>