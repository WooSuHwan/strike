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
								<td>
									<label for="freeCode">글 번호</label><input type="text" id="freeCode" name="freeCode" value="${read.freeCode}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="title">제목</label><input type="title" id="title" name="title" value="${read.title}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="story">내용</label><textarea id="story" name="story"><c:out value="${read.story}" /></textarea>
								</td>
							</tr>
							<tr>
							</tr>
						</tbody>			
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>
 

 

 

