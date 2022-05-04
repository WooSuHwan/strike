<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="header"> <!-- header nav 메뉴 시작 -->
            <div class="Logo">
                <a href="/"><img src="../resources/img/logo.png" width="100%" height="100%" alt="logo"></a>
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
</body>
</html>