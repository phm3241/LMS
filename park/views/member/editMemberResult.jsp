<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>결과페이지 : 회원정보 수정</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/default.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<h1 class="subtitle">회원 정보 수정</h1>
		<hr>
		
		
	<c:if test="${resultCnt == 1}">
		<h1>회원정보가 수정되었습니다.</h1><br>
		<h3>아이디 : ${member.uid}</h3>
		<h3>비밀번호 : ${member.upw}</h3>
		<h3>이름 : ${member.uname}</h3>
		<h3>사진 : <img id="img" src="<c:url value="${member.uphoto}"/>" width="100" height="80"/></h3>
		
	</c:if>
	<c:if test="${resultCode < 1}">
		<h1>수정이 정상처리되지 않았습니다. 확인 후 다시 진행해주세요.</h1>
	</c:if>


	<a href="memberList.do">리스트보기</a>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>