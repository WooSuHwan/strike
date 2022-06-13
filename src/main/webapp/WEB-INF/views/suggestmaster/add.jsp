<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/resources/css/freewrite.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet"href="https://unpkg.com/swiper/swiper-bundle.min.css" />

<!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="/resources/summernote/summernote-lite.js"></script>
  <script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="/resources/summernote/summernote-lite.css">

</head>
<body>
	<div class="mypageNav"></div>
  	<jsp:include page="../font.jsp"></jsp:include>
  	<jsp:include page="../nav.jsp"></jsp:include>

  	<section>
  		<div class="clanAll">
            <div class="clanrankSearch">
                <div class="clanrankSearch1200">
                    <div class="clanrankSearch_01">
                        <div class="clanrankSearch_01_01">
                            <a href="/suggestfree/list">자유게시판</a>
                        </div>
                        <div class="clanrankSearch_01_02">
                            <a href="/suggestmaster/list">공지사항</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="freewrite01">
            	<h1>공지사항</h1>
            </div>


			<form method="post" class="vmfl00">
				<div class="freewrite02">
					<div class="freewrite02_01">
						<input type="text" name="title" placeholder="제목을 입력하시오"
							value="${item.title}">
					</div>
					<div class="freewrite02_02">
						<textarea id="summernote" name="story">${item.story}</textarea>
					</div>
				</div>
				
				<div class="cbtn0">
					<div class="cbtn0_b01">
						<button type="button" onclick="location.href = 'list' ">취소</button>
					</div>
					<div class="cbtn0_b02">
						<button>글쓰기</button>
					</div>
				</div>

			</form>

			<div>
				<input type="hidden" name="member_code" value="${sessionScope.member_code}">
			</div>
		</div>    
            
        <div class="wh"></div>
  	</section>
  
	<script type="text/javascript">
	$('#summernote').summernote({
			placeholder: '내용을 입력해 주세요.',
			height: 512,                 // set editor height
		  	minHeight: null,             // set minimum height of editor
		  	maxHeight: null,             // set maximum height of editor
		  	focus: true                  // set focus to editable area after initializing summernote
		});
	</script>
    <jsp:include page="../footer.jsp"></jsp:include>    
    <script src="/resources/js/index.js"></script>
</body>
</html>