<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 리스트</title>
<style>
html, body {

}

  table {
   margin-left:auto; 
    margin-right:auto;
    
    border-top: 1px solid #444444;
    border-collapse: collapse;
    left: 200px;
 	 top: 300px;
 	 position: relative;
  }
 
  
  th, td {
    border-bottom: 1px solid #c0c0c0;
    padding: 10px;
    text-align: center;
    
   
  }
  th {
    background-color: #eeeeee;
     
     font-size : 18px;
     
  }
  td {
  	font-weight: 600;
  }

.login {
	text-align : right;
}

.image-center {
	height : calc(100% - 250px);
	display : flex;
    align-items : center;
    justify-content : center;
    margin-top: 100px;
}
.row {
	display : flex;
    align-items : center;
    justify-content : space-between;
    style="text-decoration:none"
}

a.{
	text-decoration-line: none;
}

button {
   
    
}

.w-btn-gray {
    background-color: #393939;
    color: #fefefe;
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


p {

  position: absolute;

  left: 200px;

  top: 200px;


}




</style>

<link rel="stylesheet" href="../index.css">
</head>
<body>
	  <div class="header"> <!-- header nav 메뉴 시작 -->
            <div class="Logo">
                <a href="/"><img src="img/logo.png" width="100%" height="100%" alt="logo"></a>
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
           <jsp:include page="../rnav.jsp"></jsp:include>
        </div> <!-- header nav 메뉴 끝 -->  

	<div>
		<p style="font-size:44px;  font-weight: bold;" >Notice Board</p>
		

		<table width=810 height=200 >
      <thead>
        <tr>
          <th>No.</th><th  >글제목</th><th>작성자</th><th>작성일</th><th>조회수</th>
        </tr>
      </thead>
      <tbody >
		<c:if test="${list.size() < 1}">
		<tr>
		<td colspan="4">등록 된 내용이 없습니다</td>
		</tr>
		</c:if>
	<c:forEach items="${list}" var="item" varStatus="status">
        <tr >
        <td >${item.freeCode}</td><td  width=450><a href="view/${item.freeCode}">${item.title}</a></td><td >${item.name}</td><td ><fmt:formatDate value="${item.regDate}" pattern="yyyy.MM.dd"/></td><td >${item.hit}</td>
        </tr>
         </c:forEach>
      </tbody>
    </table>
		
		<c:if test="${code ne null}">
				<span><a href="add" style="text-decoration:none">작성</a></span>
			</c:if>
		 <button class="w-btn w-btn-gray" type="button" onclick = "location.href = 'add' ">글쓰기</button>
		
		
	</div>
</body>
</html>