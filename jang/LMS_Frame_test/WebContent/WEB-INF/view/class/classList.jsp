<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link rel="stylesheet" href="<c:url value="/CSS/default.css"/>"> 
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<style>

	span.totalMemberCount {
		color: green;
	}

	#profile_photo {
		width: 100px;
		height: 100px;
	}
	
	div.memberInfo {
		font-weight: bold;
		
		margin: 10px 10px;
		padding: 5px 5px;
		
	}
	
	.currentPage {
		background-color: yellow;
	}
	
	
	.delBtn {
		
	}

</style>

</head>
<body>
	
	<%-- <%@ include file="/WEB-INF/views/include/header.jsp"%> --%>
	
	<div>
		<h1 class="subtitle">강의 리스트</h1><span class="totalMemberCount">현재 총 강의 수 : ${listView.memberTotalCount} 명</span>
		<hr>
		<h3>
			
			<c:if test="${not empty classInfo.classList}">
				
				<c:forEach items="${classInfo.classList}" var="classInfo">
					<div class="classInfo">
						강의번호 : ${classInfo.idx}<br>
						시작시간 : ${classInfo.startTime}<br>
						강의명 : ${classInfo.className}<br>
						강의실 : ${classInfo.classRoom}<br>
						<a href="?idx=${class.idx}" id="delBtn">삭제</a>
						<a href="?idx=${class.idx}" id="editBtn">수정</a>
						<hr>
						
						
					</div>					
				</c:forEach>
			</c:if>
			
			<div class="paging">
			<c:if test="${classInfo.pageTotalCount>0}">
				<c:forEach begin="1" end="${classInfo.pageTotalCount}" var="num">
					<a href="classList.do?page=${num}" ${classInfo.currentPageNumber eq num ? 'class="currentPage"':''}>[${num}]</a>
				
				</c:forEach>
			
			</c:if>
			
			</div>
			
			
		
		</h3>
	</div>
	
	<%-- <%@ include file="/WEB-INF/views/include/footer.jsp"%> --%>
</body>
</html>


