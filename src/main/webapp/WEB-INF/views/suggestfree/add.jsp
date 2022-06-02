<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>



</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="/resources/summernote/summernote-lite.js"></script>
 <script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
 <link rel="stylesheet" href="/resources/summernote/summernote-lite.css">
 <link rel="stylesheet" href="/resources/css/add.css">
<script>
   $(function() {
      $('#summernote').summernote({
    	  height: 415,
    	  lang: "ko-KR",
    	  minHeight: null,             // 최소 높이
		  maxHeight: null,			   // 최대 높이
		  focus: true
		  
	
      });
      
   })
</script>

</head>
<body>
<div class="mypageNav"></div>
  <div class="header"> <!-- header nav 메뉴 시작 -->
        <div class="Logo">
            <a href="/"><img src="/resources/img/logo.png" width="100%" height="100%" alt="logo"></a>
        </div>
        <div class="W_1200px">
            <div class="Menu">
                <ul class="Menu_list">
                    <li>
                        <a href="../clan/list">클랜랭크</a>
                    </li>
                    <li>
                        <a href="#">개인랭크</a>
                    </li>
                    <li>
                        <a href="#">대결(신청)</a>
                    </li>
                    <li>
                        <a href="#">자유게시판</a>
                    </li>
                    <li>
                        <a href="#">공지사항</a>
                    </li>
                    <li>
                        <a href="#">중고</a>
                    </li>
                </ul>
            </div>
        </div>
       <jsp:include page="rnav.jsp"></jsp:include>
    </div> <!-- header nav 메뉴 끝 -->   

<div class="mypageNavSM"></div>
    <p style="font-size:44px;  font-weight: bold; text-align: center;" >Notice Board</p>
    <div class="mypageNavSM"></div>
    <form method="post" >
    <div class="containerBox">
    
        <div class="boardBar">
            <div class="titleBox">
                <div class="mypageNavSM3"></div>
                <input type="text" name="title"  placeholder="제목을 입력하시오" value="${item.title}">
            </div>

              <div class="underBarBox">
       
                <hr style="border:2px color= silver;" width="90%">
              </div>

              
            <div class="storyBar" >
               
                    <textarea id="summernote" name="story">${item.story}</textarea>
                 
            
    </div>  
  </div>
 </div>
	<div class="mypageNavSM"></div>
<div class="containerBox2">
  	<div>
        <button class="w-btn w-btn-gray"   style="width:100; float: right;">글쓰기</button>
    </div> 
    <div>
        <button class="w-btn w-btn-white" type="button" onclick = "location.href = 'list' " style="width:100; float: right;">목록</button>
    </div>
        
</div>
     <input type="hidden" name="name" type="text"  value="${SessionScope.member.name}">
   </form>
   
   <div>
   </div>
   <div>${SessionScope.member.name}</div>
</body>
</html>