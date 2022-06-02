<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<<<<<<< HEAD
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRIKE</title>

    <link rel="stylesheet" href="/resources/css/font.css">
    <link rel="stylesheet" href="/resources/css/mypagemain.css">
    <link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
</head>
<body>
    <jsp:include page="../font.jsp"></jsp:include>
    <jsp:include page="../nav.jsp"></jsp:include>
    <jsp:include page="../rnav.jsp"></jsp:include>

	
	<div class="mypageNav"></div>
	
<%-- 	${item.member_code } --%>
<%-- 	${item.id } --%>
<%-- 	${item.name } --%>
<%-- 	${item.birth } --%>
<%-- 	${item.sex } --%>
<%-- 	${item.tel } --%>
<%-- 	<a href="../update/${item.member_code}">회원정보 수정</a> --%>
	
	<div class="mypageTotal">
    <div class="itemTotal">

        <div class="leftNav">
            <div class="navPro">
                    <div class="proOne">
                        <img src="/resources/img/mypage1.png" alt="1">
                    </div>
                    <div class="proFont">
                        <div class="proName">홍길동 </div><div class="proName2">&nbsp;님</div>
                    </div>
            </div>

            <div class="navList">
                <div class="navListDiv">
                    <div class="navListDivName">내 정보 관리</div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName">개인전적</div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName">신청내역</div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName">회원탈퇴</div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                </div>
            </div>
            
        </div>
        
        <div class="mainBody">
            <div class="mypageName"><strong class="namePoint">홍길동</strong><div class="name">&nbsp;님의 마이페이지</div></div>
                
                <div class="mypageBox">
                    <div class="box">
                        <div class="tear">
                            <div class="myText">
                                    <p class="namePoint myTitle">My Tear</p>
                                    <p class="namePoint myTitle">홍길동님은</p>
                                    <div class="nameTearPoint"><p class="namePoint">현재&nbsp;</p><p class="namePorintTear">CHALLENGER</p> &nbsp;<p class="namePoint">티어 입니다.</p></div>
                            </div>
                        </div>
                        <div class="mypageClan">
                            <div class="myText">
                                <p class="namePoint myTitle">My clan</p>
                                <div class="nameTearPoint myTitle"><p class="namePoint">현재&nbsp;</p><p class="namePorintTear">STRIKE</p> &nbsp;<p class="namePoint">클랜 입니다.</p></div>
                                <a href="#"> <img src="/resources/img/mypageclan.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="total">
                        <div class="myText">
                        <p class="namePoint myTitle">현재 전적 (개인)</p>
                        <div class="nameTearPoint myTitle2">
                            <p class="namePoint">승&nbsp;</p>
                            <p class="namePorintTear">253&nbsp;&nbsp;</p> 
                            <p class="namePoint ">패&nbsp;</p>
                            <p class="namePorintTear">19&nbsp;&nbsp;</p> 
                            <p class="namePoint">무&nbsp;</p>
                            <p class="namePorintTear">23&nbsp;&nbsp;</p> 
                        </div>
                    </div>
                    </div>
                </div>
            <div class="mypageUpdate">
                <div class="singup2simple">
                    <div class="singup2simple_01">
                        <p>개인정보수정</p>
                    </div>
                    <div class="singup2simple_02">
                        <span>*</span>&nbsp; 표시는 필수항목 입니다.
                    </div>
                </div>
                <form style="width: 100%;">
                    <div class="singup2Table">
                        <table>
                            <tbody>
                                <tr>
                                    <td class="tableColor">아이디 <span>*</span></td>
                                    <td class="tableInput">${item.id }</td>
                                </tr>
                                <tr>
                                    <td class="tableColor">비밀번호 <span>*</span></td>
                                    <td class="tableInput"></td>
                                </tr>
                                <tr>
                                    <td class="tableColor">비밀번호 확인 <span>*</span></td>
                                    <td class="tableInput"><input type="password"></td>
                                </tr>
                                <tr>
                                    <td class="tableColor">이름 <span>*</span></td>
                                    <td class="tableInput">${item.name }</td>
                                </tr>
                                <tr>
                                    <td class="tableColor">주소 <span>*</span></td>
                                    <td class="tableInput">
                                        <div class="tableInput_01">
                                            <input type="text" style="width: 23%;" name="postcode" id="postcode"  placeholder="우편번호" readonly>
                                            <button type="button" class="tableBtn0" onclick="execDaumPostcode()">우편번호</button>
                                        </div>
                                        <div class="tableInput_02">
                                            <input type="text" style="margin-left: 1.5em;" class="tableBtn1" name="address" id="address" placeholder="도로명 주소" readonly />
                                            <input type="text" style="margin-left: 0.7em;" name="detailAddress" placeholder="상세 주소" required />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tableColor">휴대전화 <span>*</span></td>
                                    <td class="tableInput">${item.tel }</td>
                                </tr>
                                <tr>
                                    <td class="tableColor">생년월일 <span>*</span></td>
                                    <td class="tableInput"><input type="date"></td>
                                </tr>
                                <tr>
                                    <td class="tableColor">성별 <span>*</span></td>
                                    <td class="tableInput" style="border-bottom: none;">
                                        <select name="sex" id="sex">
                                            <option value="0">남자</option>
                                            <option value="1">여자</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>

                <div class="loginBtn">
                    <a href="../update/${item.member_code}"><button type="button" onclick="location.href='singup3.html' "> 개인정보 수정</button></a>
                    <!-- <input type="button" value="로그인" onclick=""> -->
=======
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/font.css">
    <link rel="stylesheet" href="/resources/css/mypagemain.css">
    <link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
</head>
<body>
    <jsp:include page="../font.jsp"></jsp:include>
    <jsp:include page="../nav.jsp"></jsp:include>

	
	<div class="mypageNav"></div>
	
<%-- 	${item.member_code } --%>
<%-- 	${item.id } --%>
<%-- 	${item.name } --%>
<%-- 	${item.birth } --%>
<%-- 	${item.sex } --%>
<%-- 	${item.tel } --%>
<%-- 	<a href="../update/${item.member_code}">회원정보 수정</a> --%>
	
	<div class="mypageTotal">
    <div class="itemTotal">

        <div class="leftNav">
            <div class="navPro">
                    <div class="proOne">
                        <img src="/resources/img/mypage1.png" alt="1">
                    </div>
                    <div class="proFont">
                        <div class="proName">${item.name } </div><div class="proName2">&nbsp;님</div>
                    </div>
            </div>

                <div class="navList">
                <div class="navListDiv">
                    <div class="navListDivName"><a href="../update/${sessionScope.member.member_code}">내 정보 관리</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="#">개인전적</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="../gameDetail/${sessionScope.member.member_code}">신청내역</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="../delete">회원탈퇴</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="/mypage/mypage/${sessionScope.member.member_code}">마이페이지 홈</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                </div>
            </div>
            
        </div>
        
        <div class="mainBody">
            <div class="mypageName"><strong class="namePoint">${item.name }</strong><div class="name">&nbsp;님의 마이페이지</div></div>
                
                <div class="mypageBox">
                    <div class="box">
                        <div class="tear">
                            <div class="myText">
                                    <p class="namePoint myTitle">My Tear</p>
                                    <p class="namePoint myTitle">${item.name }님은</p>
                                    <div class="nameTearPoint"><p class="namePoint">현재&nbsp;</p><p class="namePorintTear">티어수정필요</p> &nbsp;<p class="namePoint">티어 입니다.</p></div>
                            </div>
                        </div>
                        <div class="mypageClan">
                            <div class="myText">
                                <p class="namePoint myTitle">My clan</p>
                               	<c:if test="${item.clan_code == 0}">
                                <div class="nameTearPoint myTitle"><p class="namePoint">현재&nbsp;</p><p class="namePoint">클랜이 존재하지 않습니다</p></div>
<!--                                 <a href="#"> <img src="/resources/img/mypageclan.png" alt=""></a> -->
                               	</c:if>
                               	<c:if test="${item.clan_code != 0}">
                                <div class="nameTearPoint myTitle"><p class="namePoint">현재&nbsp;</p><p class="namePorintTear">${item.clan_code }</p> &nbsp;<p class="namePoint">클랜 입니다.</p></div>
                                <a href="/clan/view/${item.clan_code}"> <img src="/resources/img/mypageclan.png" alt=""></a>
                               	</c:if>
                            </div>
                        </div>
                    </div>
                    
                    <div class="total">
                        <div class="myText">
                        <p class="namePoint myTitle">현재 전적 (개인)</p>
                        <div class="nameTearPoint myTitle2">
                            <p class="namePoint">승&nbsp;</p>
                            <p class="namePorintTear">${item.win }&nbsp;&nbsp;</p> 
                            <p class="namePoint ">패&nbsp;</p>
                            <p class="namePorintTear">${item.lose }&nbsp;&nbsp;</p> 
                            <p class="namePoint">무&nbsp;</p>
                            <p class="namePorintTear">${item.draw }&nbsp;&nbsp;</p> 
                        </div>
                    </div>
                    </div>
                </div>
            <div class="mypageUpdate">
                <div class="singup2simple">
                    <div class="singup2simple_01">
                        <p>개인정보</p>
                    </div>
                </div>
                <form style="width: 100%;">
                    <div class="singup2Table">
                        <table>
                            <tbody>
                                <tr>
                                    <td class="tableColor">아이디 </td>
                                    <td class="tableInput">${item.id }</td>
                                </tr>
                                <tr>
                                    <td class="tableColor">이름</td>
                                    <td class="tableInput">${item.name }</td>
                                </tr>
                                <tr>
                                    <td class="tableColor">휴대전화</td>
                                    <td class="tableInput">${item.tel }</td>
                                </tr>
                                <tr>
                                    <td class="tableColor">생년월일</td>
                                    <td class="tableInput">${item.birth }</td>
                                </tr>
                                <tr>
                                    <td class="tableColor">성별</td>
                                    <td class="tableInput" style="border-bottom: none;">
                                     <c:choose>
								       <c:when test = "${sessionScope.member.sex == 0}">
								          남자
								       </c:when>
								       <c:when test = "${sessionScope.member.sex == 1}">
								          여자
								       </c:when>
								       <c:otherwise>
								          성별이 등록되지 않았습니다.
								       </c:otherwise>
								    </c:choose>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>

                <div class="loginBtn">
                    <a href="../update/${item.member_code}"> 개인정보 수정</a>
>>>>>>> refs/heads/WSH
                </div>

            </div>
            <div class="wh"></div>
        </div>
    </div>
</div>

     <jsp:include page="../footer.jsp"></jsp:include>
     <script src="/resources/js/index.js"></script>
</body>
</html>