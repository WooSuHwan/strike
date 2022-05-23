<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	 <title>게시판</title>


</head>
	<body>
		<div id="root">
			<header>
				<h1> 게시판</h1>
			</header>
			<hr />
			 
			<nav>
			  홈 - 글 작성
			</nav>
			<hr />
			
			<section id="container">
				<form role="form" method="post">
					<table>
						<tbody>
							<tr>
								
							</tr>	
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" value="${item.title}"  readonly/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="story">내용</label><textarea type="text" id="story" name="story" readonly="readonly" disabled><c:out value="${item.story}" /></textarea>
								</td>
							</tr>
							<tr>
									
					
							<!-- 댓글 작성 영역 -->	
			<div style="width:650px; text-align: center;">
				<br>						
						<a href=".." >목록</a></td>
						
						<a href="../update/${item.free_code}" >변경</a>
 						<a href="../delete/${item.free_code}" >삭제</a> 
						
							</tr>
						</tbody>			
					</table>
				</form>
			</section>
			<hr/>		

	<!-- 댓글 시작 -->

<hr />

<ul>
	<c:forEach items="${reply}" var="reply">
	<li>
		<div>
			<p>${reply.reply_name} / <fmt:formatDate value="${reply.reg_date}" pattern="yyyy-MM-dd" /></p>
			<p>${reply.reply_story}</p>
			<c:if test="${sessionScope.name == reply.reply_name}">
			<a href="../reply/${reply.reply_code}/replyupdate" >수정</a>
			</c:if>
			<c:if test="${sessionScope.name == reply.reply_name}">
			<a href="../reply/${reply.reply_code}/replydelete" >삭제</a>
			</c:if> 
		</div>
	</li>	
	</c:forEach>
</ul>

<div>

	<form method="post" action="../reply/${item.free_code}/write">
	
		<p>
			<label>댓글 작성자</label> <input type="text" name="reply_name" value="${name}" readonly>
		</p>
		<p>
			<textarea rows="5" cols="50" name="reply_story"></textarea>
		</p>
		<p>
			<input type="hidden" name="free_code" value="${item.free_code}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	
</div>

<!-- 댓글 끝 -->
	


	</body>
</html>
 
 

 

	


 

 

