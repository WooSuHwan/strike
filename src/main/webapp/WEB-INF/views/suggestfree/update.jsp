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
   <jsp:include page="../font.jsp"></jsp:include>
  <jsp:include page="../nav.jsp"></jsp:include>

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
        <button class="w-btn w-btn-gray"   style="width:100; float: right;">변경</button>
    </div> 
    <div>
        <button class="w-btn w-btn-white" type="button" onclick = "location.href = '../list' " style="width:100; float: right;">목록</button>
    </div>
        
</div>
     <input type="hidden" name="name" type="text"  value="${name}">
   </form>
   
   <div class="mypageNav"></div>
        <div class="mypageNav"></div>
        <div class="mypageNav"></div>
        <div class="footer">
            <div class="footerL01">
                <div class="ffflogo">
                    <img src="/resources/img/logoW.png" width="100%" height="30%" alt="logo">
                </div>
                <div class="ffftxt">
                    <ul>
                        <li id="footer_1">STRIKE Project</li>
                        <li id="footer_2">Project Team : ( 팀장 ) 홍종필 ( 팀원 ) 우수환 박미연 신인선</li>
                        <li id="footer_3">주소 : 대전광역시 동구 우암로 352-21 한국 폴리텍 대전 컴퍼스</li>
                        <li id="footer_4"> COPYRIGHTⓒ2022.STRIKE.All.rights reserved.</li>
                    </ul>
                </div>
            </div>
            <div class="footerL02">
                <div class="footerL02_01">
                    <ul>
                        <li id="footer_5">TEL &nbsp;<span>063-447-2500</span></li>
                        <li id="footer_2">AM : 10:00 ~ PM : 17:30 <br> LUNCH TIME PM 12:00 ~ 13:00</li>
                    </ul>
                </div>
            </div>
        </div> <!-- 풋터 부분  -->
   	<script src="/resources/js/index.js"></script>
</body>
</html>