<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

.mypageNav{
    display: flex;
    height: 5.5em;
}

.mypageNavSM{
    display: flex;
    height: 2.5em;
}

.mypageNavSM2{
    display: flex;
    height: 0.5em;
}

.mypageNavSM3{
    display: flex;
    width: 6px;
    height: 1.5em;
}
.mypageNavSM4{
    display: flex;
    width: 30px;
    height: 1.5em;
}


.containerBox {
    margin:0 auto;
    display: flex;
    flex-direction: column; 
    width:700px;
    
}

.containerBox2 {
    margin:0 auto;
    display: flex;
    flex-direction: row-reverse;
    width:700px;
    justify-content: space-between;
    
}

.w-btn-gray {
    background-color: #393939;
    color: #fefefe;
}

.w-btn-white {
    background-color: #ffffff;
    color: #000000;
    
}

.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 8px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

input {
    font-size: 13px;
    
    width: 650px;
    padding: 10px;
    border: none;
    font-weight: bold
}

.titleBox {
    width:700px;
    display: flex;
    height: 2em;
}

.boardBar{
    height:  500px;
    width: 700px;
    border: 2px solid #dddddd;
    background: #ffffff;
    border-radius: 10px;
    

    
}

.underBarBox{
    border: 2px solid #ffffff;
        
        width:695px;
       height: 0px;
        display: flex;
        justify-content: center;
    
}



.storyBar{
    height:  450px;
    text-align: center;
}

textarea{
    width: 670px;
    height:  460px;
    border: none;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="/resources/summernote/summernote-lite.js"></script>
 <script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
 <link rel="stylesheet" href="/resources/summernote/summernote-lite.css">
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
<div class="mypageNavSM"></div>
    <p style="font-size:44px;  font-weight: bold; text-align: center;" >Notice Board</p>
    <div class="mypageNavSM"></div>
    <div class="containerBox">
        <div class="boardBar">
            <div class="titleBox">
                <div class="mypageNavSM3"></div>
                <input type="text" placeholder="제목을 입력하시오">
            </div>

              <div class="underBarBox">
       
                <hr style="border:2px color= silver;" width="90%">
              </div>

              
            <div class="storyBar" >
                <form method="post">
                    <textarea id="summernote" name="editordata"></textarea>
                  </form>
            <div>
        </div>
    </div>  
  </div>
 </div>
	<div class="mypageNavSM"></div>
<div class="containerBox2">
    <div>
        <button class="w-btn w-btn-gray" type="button" onclick = "location.href = 'add' " style="width:150; float: right;">글쓰기</button>
    </div>
    <div>
        <button class="w-btn w-btn-white" type="button" onclick = "location.href = 'submit' " style="width:100; float: right;">목록</button>
    </div>
        
</div>
    
   
   
</body>
</html>