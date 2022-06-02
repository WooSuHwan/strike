<<<<<<< HEAD
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
							<c:if test="${sessionScope.name == item.name}">
						<a href="../update/${item.freeCode}" >변경</a>
 						<a href="../delete/${item.freeCode}" >삭제</a> 
						</c:if>
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
			<p>${reply.replyName} / <fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd" /></p>
			<p>${reply.replyStory}</p>
		</div>
	</li>	
	</c:forEach>
</ul>

<div>

	<form method="post" action="/reply/write">
	
		<p>
			<label>댓글 작성자</label> <input type="text" name="replyName" value="${name}" readonly>
		</p>
		<p>
			<textarea rows="5" cols="50" name="replyStory"></textarea>
		</p>
		<p>
			<input type="hidden" name="freeCode" value="${item.freeCode}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	
</div>

<!-- 댓글 끝 -->
	


	</body>
</html>
 
 

 

	


 

 

=======
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
							<c:if test="${sessionScope.name == item.name}">
						<a href="../update/${item.freeCode}" >변경</a>
 						<a href="../delete/${item.freeCode}" >삭제</a> 
						</c:if>
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
			<p>${reply.replyName} / <fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd" /></p>
			<p>${reply.replyStory}</p>
		</div>
	</li>	
	</c:forEach>
</ul>

<div>

	<form method="post" action="/reply/write">
	
		<p>
			<label>댓글 작성자</label> <input type="text" name="replyName" value="${name}" readonly>
		</p>
		<p>
			<textarea rows="5" cols="50" name="replyStory"></textarea>
		</p>
		<p>
			<input type="hidden" name="freeCode" value="${item.freeCode}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	
</div>

<!-- 댓글 끝 -->
	


	</body>
</html>
 
 

 

	


 

 

>>>>>>> refs/heads/WSH
