<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>

</style>


<link rel="stylesheet" href="/resources/css/index.css">
<jsp:include page="font.jsp"></jsp:include>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined" rel="stylesheet">
<link rel="stylesheet" href="summernote/summernote-lite.css">
<link rel="stylesheet" href="/resources/css/view.css">
</head>
<body>
   
    <div class="mypageNav"></div>
    <jsp:include page="nav.jsp"></jsp:include>
    
    
    <div class="mypageNavSM"></div>
    <p style="font-size:44px;  font-weight: bold; text-align: center;" >게시글</p>
    <div class="mypageNavSM"></div>
    <div class="container">
        <div class="boardBar">
            <div class="mypageNavSM5"></div>
            <div class="titleBox">
                <div class="mypageNavSM3"></div>
                <p style="font-size:18px;  font-weight: bold; " >안녕하세요 홍길동입니다.</p>
                
            </div>
            <div class="mypageNavSM7"></div>
               
            <div class="titleBox2">
                <div class="mypageNavSM3"></div>
                <p style="font-size:18px; font-weight: bold;">${item.name}</p>
            </div>
               
            <div class="titleBox3">
                <div class="mypageNavSM3"></div>
                <p style="font-size:14px; color:gray;">2022.05.02</p>
                <div class="mypageNavSM8"></div>
                <p style="font-size:14px; color:gray; " ,align="center">조회53</p>
                <div class="mypageNavSM6"></div>
                <img src="/resources/img/reply.png" width="4%" height="100%" alt="logo"> <a style="font-size:14px; font-weight: bold;">댓글</a>
                
            </div>
                <div class="mypageNavSM9"></div>

            <div class="underBarBox">
                
                <hr style="border:2px color= silver;" width="92%">
              </div>

            <div class="StoryAndReplyBar" > <!-- 여기에 내용 코딩해서 넣어야함 -->
                <div class="storyBox">
                    <div class="mypageNavSM3"></div>	
							<span  style="text-align: left; font-weight: bold;" type="text" id="story" name="story" readonly="readonly" disabled><c:out value="${item.story}" />
                                
                                
                            </span>
                    <div class="mypageNavSM3"></div>
                </div>    
            <div class="replyBox">
                <div class="replyBar">
                    <div class="mypageNavSM3"></div>
                        <img src="/resources/img/reply.png" width="4%" height="100%" alt="logo"> <a style="font-size:14px; font-weight: bold;">댓글</a>
                    <div class="mypageNavSM3"></div>    
                </div>

            </div>
                    <div class="underBarBox">
                        <hr style="border:2px color= silver;" width="92%">
                    </div>
                
                    
                    <div class="mypageNavSM11"></div>
                
               
                <div class="titleBox2">
                    <div class="mypageNavSM3"></div>
                    <p style="font-size:18px; font-weight: bold;">댓글</p> 

                </div>
                    
        
                    
          <div class="replyContent">
              
            <div class="mypageNavSM3"></div>
            <div class="replyComtentStory"> 
                <!-- 댓글 시작 -->
    <div>
	<c:forEach items="${reply}" var="reply">
	<li>
		<div class="replycontentbox" >
			<div class="mypageNavSM11"></div>
            <p style="text-align: left; font-weight: bold; font-size:16px;">${reply.reply_name}</p>
            <div class="mypageNavSM9"></div>
			<p style="text-align: left; font-weight: bold; font-size:18px;">${reply.reply_story}</p>
            <div class="mypageNavSM9"></div>
            <p style="text-align: left; font-size:14px; color:gray;"><fmt:formatDate value="${reply.reg_date}" pattern="yyyy-MM-dd" /><a href="../reply/${reply.reply_code}/replyupdate" >수정</a>
                <a href="../reply/${reply.reply_code}/replydelete" >삭제</a></p>	
		</div>
	</li>	
	</c:forEach>
</div>

<div class="boardBar2">

	<form method="post" action="../reply/${item.free_code}/write">
        <div class="mypageNavSM11"></div>
		<p style="text-align: left"  >
			 <input  style="font-weight : bold;  width: 200px " type="text" name="reply_name" value="${SessionScope.member.name}" readonly>
		</p>
		<p style="text-align: left">
			<input placeholder="이곳에 입력하세요." style="font-weight : bold;  width: 600px " name="reply_story"></input>
		</p>
		<p style="text-align: right" >
			<input type="hidden" name="free_code" value="${item.free_code}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	
</div>

<!-- 댓글 끝 -->
            </div>
            <div class="mypageNavSM3"></div>
          </div>           
             
  </div>
  
 </div>
</div>
<div class="mypageNavSM"></div>
<div class="containerBox2">

    <div>
        <button class="w-btn w-btn-gray"  onclick = "location.href = '../update/${item.free_code}' " style="width:100; float: right;">수정</button>
    </div> 
    
    <div>
        <button class="w-btn w-btn-white" type="button" onclick = "location.href = '../list' " style="width:100; float: right;">목록</button>
    </div>
        
   
</div>
<div class="mypageNavSM"></div>

<div class="mypageNav"></div>
        <div class="mypageNav"></div>
        <div class="mypageNav"></div>
         <jsp:include page="../footer.jsp"></jsp:include>
     <script src="/resources/js/index.js"></script>
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
