<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" href="/resources/css/freeWview.css">
	<link rel="stylesheet" href="/resources/css/index.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	
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
</head>
<body>
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
            
           	<div class="freeWview01">
           		<h1>게시글</h1>
           	</div>
            
            <div class="vspost">
                <div class="vspost_02">
                    <div class="vspost_02_01">
                        <h1>${item.title}</h1>
                    </div>
                    <div class="vspost_02_02">
                        <div class="vspost_02_txt">
                            <h2>${item.name}</h2>
                        </div>
                        <div class="vspost_02_date">
	                        <div class="vspost_02_date_001">
	                        	<div class="vspost_02_date01">
	                            	<fmt:formatDate value="${item.reg_date}" pattern="yyyy.MM.dd" />
	                            </div>
	                            <div class="vspost_02_date02">
	                                <p>조회수 ${item.hit}</p>
	                            </div>
	                        </div>
                            <div class="vspost_02_date_002">
                            	<div class="vspost_02_date03">
                            		
                            	</div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="StoryAndReplyBar">
						<div class="storyBox">
							<span type="text" id="story" name="story" readonly="readonly" disabled>
								<c:out value='${item.story}' escapeXml="false" />
							</span>
						</div>
						
						

					
				
					</div>
                </div>
            </div>
			<div class="cbtn0">
				<div class="cbtn0_b01">
					<button type="button" onclick="location.href = '../list' ">목록</button>
				</div>
				<c:if test="${sessionScope.member_code == item.member_code}">
					<div class="cbtn0_b02">
						<button onclick = "location.href = '../update/${item.master_code}' ">수정</button>
					</div>
					<div class="cbtn0_b03">
						<button onclick = "location.href = '../delete/${item.master_code}' ">삭제</button>
					</div>
				</c:if>
			</div>
		</div>    

		<div class="wh"></div>
	</section>
	
	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="/resources/js/index.js"></script>
</body>
</html>