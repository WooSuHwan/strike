<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>STRIKE</title>
<link rel="shortcut icon" type="image/x-icon" href="../resources/img/Ologo.png" />
</head>
<body>
<div class="header"> <!-- header nav 메뉴 시작 -->
            <div class="Logo">
                <a href="/franchisee"><img src="/resources/img/franchisee/franchiseeLogo.png" width="100%" height="100%" alt="logo"></a>
            </div>
            	<div class="row">
		<!-- 로그인 전 -->
		<div>
<%-- 			<c:if test="${sessionScope.member == null && sessionScope.franchisee == null}"> --%>
<!-- 				<div><a href="franchiseeLogin/login" style="text-decoration:none">가맹점 로그인</a></div> -->
<%-- 			</c:if> --%>
			
<%-- 			<c:if test="${sessionScope.member == null && sessionScope.franchisee == null}"> --%>
<!-- 				<div><a href="franchisee/add" style="text-decoration:none">가맹점 회원가입</a></div> -->
<%-- 			</c:if> --%>
		<!-- 로그인 후 -->
			
			
			
		</div>
	</div>
            <div class="W_1200px">
                <div class="Menu">
                    <ul class="Menu_list">
                        <li>
                            <!-- 이름	 -->
			<c:if test="${sessionScope.franchisee != null}">
				${sessionScope.franchisee.name}님 환영합니다.
			</c:if>
                        </li>
                        <li>
                           <!-- 로그아웃 --> 
                           <c:if test="${sessionScope.member == null && sessionScope.franchisee == null}">
							<div>
								<a href="franchiseeLogin/login" style="text-decoration: none">로그인</a>
							</div>
						</c:if> <c:if test="${sessionScope.franchisee != null}">
				<span><a href="/franchiseeLogin/logout" style="text-decoration:none">로그아웃</a></span>
			</c:if>
                        </li>
                    </ul>
                </div>
            </div>
        </div> <!-- header nav 메뉴 끝 -->  
</body>
</html>