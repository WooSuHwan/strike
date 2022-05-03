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
									<label for="title">제목</label><input type="title" id="title" name="title" value="${item.title}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="story">내용</label><textarea id="story" name="story"><c:out value="${item.story}" /></textarea>
								</td>
							</tr>
							<tr>
					
						
							<a href=".." >목록</a></td>
							<c:if test="${sessionScope.grade == 100}">
						<a href="../update/${item.masterCode}" >변경</a>
 						<a href="../delete/${item.masterCode}" >삭제</a>
						</c:if>
							</tr>
						</tbody>			
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>
 

 

 

