<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/default.css">
	<style></style>
</head>

<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<h1 class="subtitle">회원 리스트</h1>
		<hr>

	<%--
		전체 게시글을 한페이지당 3개씩 나눈 게시판목록 : MemberListView 객체  
		${listView} 
	--%>


	<!-- 해당 페이지 게시글 목록 -->
	<c:if test="${not empty listView.memberList}">

		<table border="1">
			<thead>
				<tr>
					<td>no.</td>
					<td>아이디</td>
					<td>비밀번호</td>
					<td>이름</td>
					<td>사진</td>
					<td>등록날짜</td>
					<td>수정/삭제</td>
				</tr>
			</thead>
				
		<c:forEach items="${listView.memberList}" var="member">
			<div class="member_row">
				<tr>
					<td>${member.idx}</td>
					<td>${member.uid}</td>
					<td>${member.upw}</td>
					<td>${member.uname}</td>
					<td><img id="img" src="<c:url value="${member.uphoto}"/>" width="50" height="30"/></td>
					<td>${member.regdate}</td>
					<td>
						<a id="edit" href="editMemberConfirm.do?uid=${member.uid}">수정</a>
						<a id="delete" href="deleteMemberConfirm.do?uid=${member.uid}">삭제</a>
					</td>
				</tr>
			</div>
		</c:forEach>
		</table>

	</c:if>



	<!-- 페이지가 있으면, 반복문으로 페이지 목록표 출력하기 -->
	<c:if test="${listView.pageTotalCount > 0}">
		<div class="paging">
			<c:forEach begin="1" end="${listView.pageTotalCount}" var="num">
				<a href="memberList.do?page=${num}"
					${listView.currentPageNumber eq num? 'class="currentPage"':''}>
					[ ${num} ] </a>
			</c:forEach>
		</div>
	</c:if>
	
	
	
<%-- 	
	<div id="deletForm_div">
		<h3>메시지를 삭제하고자 하시면, 비밀번호를 입력해주세요.</h3>
		<form id="delForm" action="deleteMember.do" onsubmit="return check()" method="post">
			비밀번호 <input type="password" name="pw">
			<!-- 서버에만 보이도록 hidden -->
			<input type="hidden" name="uid" value="${param.uid}">
			<input type="submit" value="삭제하기">
		</form>
	</div>

 --%>



	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>








