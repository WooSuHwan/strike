<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
	function deleteHtml(htmlTxt)
	{
		htmlTxt = htmlTxt || '';
		htmlTxt = htmlTxt.replace(/<\/p>/ig,"</p>\n");
		htmlTxt = htmlTxt.replace(/&nbsp;/ig," ");
		htmlTxt = htmlTxt.replace(/<br>/ig, "\n");
		
		htmlTxt = htmlTxt.replace(/<(\/)?([a-zA-Z0-9]*)(\s[a-zA-Z0-9]*=[^>]*)?(\s)*(\/)?>/ig,"");
		
		return htmlTxt;
	}
</script>
<style>
.storyBox{
    display: flex;
    width: 700px;
    height: 100%;
    flex-direction: row;
    min-height: 200px;

    
}
</style>
<link rel="stylesheet" href="/resources/css/index.css">
<jsp:include page="../font.jsp"></jsp:include>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined" rel="stylesheet">
<link rel="stylesheet" href="summernote/summernote-lite.css">
<link rel="stylesheet" href="/resources/css/view.css">

</head>
<body>
   
    <div class="mypageNav"></div>
    <jsp:include page="../nav.jsp"></jsp:include>
    
    
    <div class="mypageNavSM"></div>
    <p style="font-size:44px;  font-weight: bold; text-align: center;" >게시글</p>
    
    <div class="mypageNavSM"></div>
    <div class="container">
        <div class="boardBar">
            <div class="mypageNavSM5"></div>
            <div class="titleBox">
                <div class="mypageNavSM3"></div>
                <p style="font-size:24px;  font-weight: bold; " >${item.title}</p>
                
            </div>
            <div class="mypageNavSM7"></div>
               
            <div class="titleBox2">
                <div class="mypageNavSM3"></div>
                <p style="font-size:18px; font-weight: bold;">${item.name}</p>
            </div>
               
            <div class="titleBox3">
                <div class="mypageNavSM3"></div>
                <p style="font-size:14px; color:gray;"><fmt:formatDate value="${item.reg_date}" pattern="yyyy.MM.dd" /></p>
                <div class="mypageNavSM8"></div>
                <p style="font-size:14px; color:gray; " ,align="center">조회수 ${item.hit}</p>
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
							<span  style="text-align: left; font-weight: bold;" type="text" id="story" name="story" readonly="readonly" disabled><c:out value='${item.story}' escapeXml="false" />
                                
                                
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
              
            <p style="text-align: left; font-size:14px; color:gray;">
            <fmt:formatDate value="${reply.reg_date}" pattern="yyyy-MM-dd" />
            <c:if test="${sessionScope.member_code == reply.member_code}">
            
            <a href="../reply/${reply.reply_code}/replydelete" >삭제</a>
            </c:if>
            </p>	
               
		</div>
	</li>	
	</c:forEach>
</div>

<div class="boardBar2">

	<form method="post" action="../reply/${item.free_code}/write">
        <div class="mypageNavSM11"></div>
		<p style="text-align: left"  >
			 <input  style="font-weight : bold;  width: 200px " type="text" name="name" value="${name}" readonly>
		</p>
		<p style="text-align: left">
			<input placeholder="이곳에 입력하세요." style="font-weight : bold;  width: 600px " name="reply_story"></input>
		</p>
		<p style="text-align: right" >
			<input type="hidden" name="free_code" value="${item.free_code}">
			<c:if test="${sessionScope.member_code != null }">
			<button type="submit">댓글 작성</button>
			</c:if>
		</p>
		<input type="hidden"  name="member_code" value="${sessionScope.member_code}">
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
        		<button class="w-btn w-btn-white" type="button" onclick = "location.href = '../list' " style="width:100; float: right;">목록</button>
   		 </div>
     			<div class="mypageNavSM12"></div>
   <c:if test="${member_code == item.member_code}">
    	 <div>   
      		  <button class="w-btn w-btn-gray"  onclick = "location.href = '../update/${item.free_code}' " style="width:100; float: right;">수정</button>
  		  </div> 
   			 <div>
       			 <button class="w-btn w-btn-red"  onclick = "location.href = '../delete/${item.free_code}' " style="width:100; float: right;">삭제</button>
    		</div> 
	</c:if>    
</div>

<div class="mypageNavSM"></div>

<div class="mypageNav"></div>
        <div class="mypageNav"></div>
        <div class="mypageNav"></div>
         <jsp:include page="../footer.jsp"></jsp:include>
     <script src="/resources/js/index.js"></script>
</body>
</html>
 
 

 

	


 

 

