<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/battleBtn.css">
<link rel="stylesheet" href="/resources/css/clanrankdetails.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet" href="../resources/css/singup2.css"/>
	<jsp:include page="../font.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<jsp:include page="../rnav.jsp"></jsp:include>
	<div class="mypageNav"></div>
	<section>
		<div class="clanAll">
			<div class="clanrankSearch">
				<div class="clanrankSearch1200">
					<div class="clanrankSearch_01">
						<h2>대결 신청 등록</h2>
					</div>
				</div>
			</div>

			<form method="post" class="vspost">
				<div class="vspost_01">
					<h3>대결 신청 등록</h3>
				</div>
				<div class="vspost_02">
					<div class="vspost_02_01">
						<label>제목</label> <input type="text" name="title">
					</div>
					<div class="vspost_02_01">
						<label>시간</label> <input type="text" name="clock">
					</div>
					<div class="vspost_02_01 tableInput">
							<label>위치</label>
							<div class="tableInput_01">
	                            <input type="text" style="width: 23%;" name="postcode" id="postcode"  placeholder="우편번호" readonly>
	                            <button type="button" class="tableBtn0" onclick="execDaumPostcode()">우편번호</button>
	                        </div>
	                        <div class="tableInput_02">
	                            <input type="text" style="margin-left: 1.5em;" class="tableBtn1" name="loc" id="address" placeholder="도로명 주소" readonly />
	                        </div>
	                </div>
					<div class="vspost_02_01">
						<label>모집</label> <input type="text" name="recruit">
					</div>
					<div class="vspost_02_01">
						<label>내용</label> <input type="text" name="story">
					</div>
				</div>
				
				<div class="applicant">
	                <div class="applicant_01">
	                    <h3>등록이 된 가쟁점 위치</h3>
	                </div>
                		<div class="applicant_02">
                   			<table class="applicanttable">
                    		    <colgroup>
		                            <col style="width: 30%;">
		                            <col style="width: 70%;">
                        		</colgroup>
		                        <thead>
		                            <tr>
		                            	<th>No.</th>
		                                <th>주소</th>
		                            </tr>
		                        </thead>
		                        <tbody>
		                        <c:forEach items="${franchiseeList}" var="item" varStatus="status">
		                            <tr>
		                            	<td>${status.index + 1 }</td>
		                                <td>${item.address}</td>
								</c:forEach>
		                        </tbody>
		                    </table>
		                </div>
					</div>
				
				<div class="cbtn0">
					<button>등록</button>
				</div>
			</form>
		</div>

		<div class="wh"></div>
	</section>
	    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script> 
	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="../resources/js/index.js"></script>
</body>
</html>