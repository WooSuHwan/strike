<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                        <div class="proName">${sessionScope.member.name } </div><div class="proName2">&nbsp;님</div>
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
                    <div class="navListDivName"><a href="../mypageRecord/${sessionScope.member.member_code}">경기결과</a></div>
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
                    <div class="navListDivName"><a href="../mypageFreeList/${sessionScope.member.member_code}">내가 쓴 글</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="../deleteClan">클랜탈퇴</a></div>
                    <div class="navListDivImg">
                        <img src="/resources/img/right.png" alt="">
                    </div>
                </div>
                <div class="navListDiv">
                    <div class="navListDivName"><a href="../deleteMember">회원탈퇴</a></div>
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
            <div class="mypageName"><strong class="namePoint">${sessionScope.member.name }</strong><div class="name">&nbsp;님의 마이페이지</div></div>
                
                <div class="mypageBox">
                    <div class="box">
                        <div class="tear">
                            <div class="myText">
                                    <p class="namePoint myTitle">My Tear</p>
                                    <p class="namePoint myTitle">${sessionScope.member.name }님은</p>
                                    <div class="nameTearPoint"><p class="namePoint">현재&nbsp;</p><p class="namePorintTear">${sessionScope.member.tier}</p> &nbsp;<p class="namePoint">티어 입니다.</p></div>
                            </div>
                        </div>
                        <div class="mypageClan">
                            <div class="myText">
                                <p class="namePoint myTitle">My clan</p>
                               	<c:if test="${Mitem.clan_code == 0}">
                                <div class="nameTearPoint myTitle"><p class="namePoint">현재&nbsp;</p><p class="namePoint">클랜이 존재하지 않습니다</p></div>
                                <a href="#"> <img src="/resources/img/mypageclan.png" alt=""></a>
                               	</c:if>
                               	<c:if test="${Mitem.clan_code != 0}">
                                <div class="nameTearPoint myTitle"><p class="namePoint">현재&nbsp;</p><p class="namePorintTear">${Mitem.clan_name }</p> &nbsp;<p class="namePoint">클랜 입니다.</p></div>
                                <a href="/clan/view/${sessionScope.member.clan_code }"> <img src="/resources/img/mypageclan.png" alt=""></a>
                               	</c:if>
                            </div>
                        </div>
                    </div>
                    
                    <div class="total">
                        <div class="myText">
                        <p class="namePoint myTitle">현재 전적 (개인)</p>
                        <div class="nameTearPoint myTitle2">
                            <p class="namePoint">승&nbsp;</p>
                            <p class="namePorintTear">${sessionScope.member.win }&nbsp;&nbsp;</p> 
                            <p class="namePoint ">패&nbsp;</p>
                            <p class="namePorintTear">${sessionScope.member.lose }&nbsp;&nbsp;</p> 
                            <p class="namePoint">무&nbsp;</p>
                            <p class="namePorintTear">${sessionScope.member.draw }&nbsp;&nbsp;</p> 
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
                                    <td class="tableInput"><p>${sessionScope.member.id }</p></td>
                                </tr>
                                <tr>
                                    <td class="tableColor">이름</td>
                                    <td class="tableInput"><p>${sessionScope.member.name }</p></td>
                                </tr>
                                <tr>
                                    <td class="tableColor">휴대전화</td>
                                    <td class="tableInput"><p>${sessionScope.member.tel }</p></td>
                                </tr>
                                <tr>
                                    <td class="tableColor">생년월일</td>
                                    <td class="tableInput"><p>${sessionScope.member.birth }</p></td>
                                </tr>
                                <tr>
                                    <td class="tableColor">성별</td>
                                    <td class="tableInput" style="border-bottom: none;">
	                                    <p>
	                                     	<c:choose>
									       		<c:when test = "${Mitem.sex == 0}">
									          남자
									       	</c:when>
									       	<c:when test = "${Mitem.sex == 1}">
									          여자
									       	</c:when>
									       	<c:otherwise>
									          성별이 등록되지 않았습니다.
									       </c:otherwise>
									    </c:choose>
									    </p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>

                <div class="loginBtn">
                    <a href="../update/${Mitem.member_code}"> 개인정보 수정</a>
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