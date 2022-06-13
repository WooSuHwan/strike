<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/personaldetails.css">
<link rel="stylesheet" href="/resources/css/index.css">

</head>
<body>
    <jsp:include page="../font.jsp"></jsp:include>
    <jsp:include page="../nav.jsp"></jsp:include>
    <jsp:include page="../rnav.jsp"></jsp:include>
<section>
        <div class="clanAll">
            <div class="clanrankSearch">
                <div class="clanrankSearch1200">
                    <div class="clanrankSearch_01">
                        <h2>가맹점 등록 신청</h2>
                    </div>
                </div>
            </div>
        
            <div class="clanRdetails01">
                <div class="cdetail01">
                    <div class="cdetail01_02">
                        <div class="cdetail01_02_01">
                            <h1>strike</h1>
                        </div>
                        <div class="cdetail01_02_02">
                            <a href="#">최신정보</a>
                        </div>
                    </div>
                </div>
                <div class="cdetail02">
                    <div class="cdetail02_01">
                        <h3>정보</h3>
                    </div>
                </div>
            </div>
            
            <div class="vspost">
                <div class="vspost_01">
                    <h3>가맹점 신청 게시글</h3>
                </div>
               
                <div class="vspost_02">
                    <div class="vspost_02_01">
                        <h1>${item.name}</h1>
                    </div>
                    <div class="vspost_02_02">
                        <div class="vspost_02_txt">
                            <h2>${item.address}</h2>
                        </div>
                        <div class="vspost_02_date">
                            <div class="vspost_02_date01">
                                <p>${item.time}</p>
                            </div>
                            <div class="vspost_02_date02">
                                <p>조회 56</p>
                            </div>
                        </div>
                    </div>
                    <div class="vspost_02_03">
                        <div class="vpostCo01">
                            <p>이름 :  ${item.name}</p>
                        </div>
                        <div class="vpostCo01">
                            <p>주소 : ${item.address}</p>
                        </div>
                        <div class="vpostCo01">
                            <p>전화번호 : ${item.tel}명</p>
                        </div>
                    </div>
                </div>
            </div>
        <div class="wh"></div>
    </section>        
     <jsp:include page="../footer.jsp"></jsp:include>
     <script src="/resources/js/index.js"></script>
</body>
</html>