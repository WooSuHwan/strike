<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 리스트</title>


<link rel="stylesheet" href="/resources/css/list.css">
<jsp:include page="font.jsp"></jsp:include>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
<div class="mypageNav"></div>
    <jsp:include page="nav.jsp"></jsp:include>
        
    <div class="container">
        
	
		<p style="font-size:44px;  font-weight: bold;" >Notice Board</p>
        <p style="font-size:20px;">회원들 간의 다양한 정보를 나눌 수 있는 공간입니다.</p>
		<div class="mypageNavSM"></div>
        <div class="whiteBox" >
          
            <div class="searchButton">
                    <div style="text-align: center">
                        <span class="material-icons-outlined" style="color: white; font-size:31px;"  >
                         search
                        </span>
                    </div>
                
            </div>
            <div  class="searchBar" >
                        <input type="text"></div>
                            <div class="mypageNavSM"></div>
                        <p style="font-size:17px;  font-weight: bold;">search</p>
            </div>
       
        <div class="mypageNavSM"></div>
		<table>
      <thead>
        <tr>
          <th>No.</th><th style="width:50%">제목</th><th >작성자</th><th >조회수</th><th >작성일</th>
        </tr>
      </thead>
      <tbody >
        <c:if test="${list.size() < 1}">
						<tr>
							<td colspan="4">등록 된 내용이 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${list}" var="item" varStatus="status"> <!-- ${list} == var="item" -->
						<tr>

							<td>${item.free_code}</td>
							<td><a href="view/${item.free_code}">${item.title}</a></td>
							<td>${item.name}</td>
							<td>${item.hit}</td>
							<td><fmt:formatDate value="${item.reg_date}" pattern="yyyy.MM.dd"/></td>
									
							
						</tr>
					</c:forEach>
      </tbody>
    </table>
    <div class="mypageNavSM"></div>
</div>
    <div class="container">
    
        <div>
		    <button class="w-btn w-btn-gray" type="button" onclick = "location.href = 'add' " style="width:100; float: right;">글쓰기</button>
        </div> 
         
        
         
	</div>
			
        <div class="mypageNav"></div>
        <div class="mypageNav"></div>
        <div class="mypageNav"></div>
         <jsp:include page="../footer.jsp"></jsp:include>
     <script src="/resources/js/index.js"></script>
</body>
</html>