<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>결과페이지 : 글삭제</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/default.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<h1 class="subtitle">회원 리스트</h1>
		<hr>
		
		
	<c:if test="${resultCode == 1}">
		<h1>회원정보가 삭제되었습니다.</h1>
	</c:if>
	<c:if test="${resultCode == -1}">
		<h1>삭제가 정상처리되지 않았습니다. 확인 후 다시 진행해주세요.</h1>
	</c:if>
	<c:if test="${resultCode == -2}">
		<h1>비밀번호가 일치하지 않습니다.</h1>
	</c:if>

	<a href="memberList.do">리스트보기</a>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>